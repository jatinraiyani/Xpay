<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use App\Mail\assignCardMail;
use App\Models\Payment;
use App\Models\Loadcard;
use App\User;
use App\Helpers\BaseFunction\BaseFunction;
use Validator;

class CardController extends Controller
{
    public function cardLoad(){

        $getLoadCard = Loadcard::join('users', 'users.id', '=', 'loadcard.userId')->select('loadcard.*','users.first_name','users.last_name','users.email','users.contactNumber')->get();

        return view('Admin.Card.cardload',compact('getLoadCard'));
    }

    public function cardPurchase(){
        $getPayment = Payment::join('users', 'users.id', '=', 'payment.userId')->select('payment.*','users.first_name','users.last_name','users.email','users.contactNumber')->get();

        return view('Admin.Card.cardpurchase',compact('getPayment'));
    }

    public function updateByAdmin(Request $request){

        $update = Payment::where('id',$request->paymentId)->update(['status' => 'confirm']);

        if($update){
        $getUpdateDate = Payment::where('id',$request->paymentId)->first();
        $date = \Carbon\Carbon::parse($getUpdateDate->updated_at)->format('Y-m-d H:i:s');
        return response()->json($date);
      }

    }

    public function loadStatusUpdate(Request $request){

        $getCardNumber = User::where('id',$request->userId)->first();
        $getAmount = Loadcard::where('id',$request->paymentId)->first();
        $headers = array(
                'Content-Type' => 'application/x-www-form-urlencoded'
                );
        $data = array (
                     'amount' => (float)$getAmount->amount
                      );
        $make_call = BaseFunction::callAPI('POST','https://boundlesspay.exchange/api/v1/users/'.$getCardNumber['cardNumber'].'/card_loads',$data,$headers);
        $response = json_decode($make_call, true);
        $update = Loadcard::where('id',$request->paymentId)->update(['status' => 'confirm','loadId' => $response['id']]);
        if($update){
        $getUpdateDate = Loadcard::where('id',$request->paymentId)->first();
        $date = \Carbon\Carbon::parse($getUpdateDate->updated_at)->format('Y-m-d H:i:s');
        return response()->json($date);
      }

    }

   public function updateCardNumber(Request $request){

     $rules = [
           'cardNumber' => 'required|numeric|unique:users,cardNumber,'.$request->userId,
       ];

       $validator = Validator::make($request->all(), $rules);

       if($validator->fails()) {
           $msg = 'error';
           return response()->json($msg);
       } else {
         $updateCard = User::where('id',$request->userId)->where('cardStatus','assigned')->update(['cardNumber' => $request->cardNumber]);
         $getUserDetails = User::where('id',$request->userId)->first();
         Mail::to($getUserDetails->email)->send(new assignCardMail());
         return response()->json($request->cardNumber);
       }

   }
}
