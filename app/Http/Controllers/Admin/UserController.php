<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Zizaco\Entrust\Entrust;
use Validator;
use App\User;
use App\Models\Role;
use Illuminate\Support\Facades\Mail;
use App\Mail\assignCardMail;
use Redirect,Response,DB,Config;

class UserController extends Controller
{
    public function index(){

      $getUsers = User::users()->get();

      return view('Admin.User.index',compact('getUsers'));

    }
    // public function userList(){
    //   $users = DB::table('users')->select('*');
    //     return datatables()->of($users)
    //         ->make(true);
    // }

    public function updateUserStatus(Request $request){

         $getStatus = User::where('id',$request->userId)->first();
         $status = $getStatus->status == 'deactive' ? 'active' : 'deactive';
         $data['status'] = $status;
         $updateStatus = User::where('id',$request->userId)->update($data);
         return response()->json($status);
       }
   public function assignCard(Request $request){

     $rules = [
       'cardNumber' => 'required|unique:users',
     ];

     $validator = Validator::make($request->all(), $rules);

     if ($validator->fails()) {

          return response()->json(['errors'=>$validator->errors()]);

     } else {

    $getStatus = User::where('id',$request->userId)->first();
    $status = 'assigned';
    $data['cardStatus'] = $status;
    $data['cardNumber'] = $request->cardNumber;

    $updateStatus = User::where('id',$request->userId)->update($data);
    if($updateStatus){
    Mail::to($getStatus->email)->send(new assignCardMail());
    }
    return response()->json($status);

     }
    }

    public function delete(Request $request){
        $delete = User::where('id',$request->deleteId)->delete();
        if($delete){
          $status = 'deleted';
        } else {
          $status = 'failed';
        }
        return response()->json($status);
    }

  }
