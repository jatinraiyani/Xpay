<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\BaseFunction\BaseFunction;
use App\User;
use App\Models\Payment;
use App\Models\Loadcard;
use Auth;
use Validator;
use URL;

use \ParagonIE\ConstantTime\Base32;
use \PragmaRX\Google2FA\Google2FA;

class CardController extends Controller
{

    public function verify(){

      if(Auth::user()->email_verified_at == null){
           return redirect('email/verify');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 0){
           return redirect('2fa');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 0) {
           return redirect('card/kyc');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 1 && Auth::user()->cardStatus == 'unpaid'){
           return redirect('card/card-policy');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 1 && Auth::user()->cardStatus == 'verified'){
           return redirect('card/dashboard');
        } else {
           return view('Frontend.verify');
        }
    }

    public function verifing(Request $request){

      $rules = [
          'cardNumber' => 'required|numeric|digits:16'
      ];

      $validator = Validator::make($request->all(), $rules);

      if ($validator->fails()) {
          return redirect()->back()
              ->withInput()
              ->withErrors($validator);
      }

     $checkCardNumber = User::where('id',Auth::user()->id)->first();

   // validation for maximum try to enter card
      if($checkCardNumber->cardCount >= 3){
         if(app()->getLocale() == 'en'){
           return redirect()->back()->with('message','Oops, you have exceeded the maximum number of tries. Please try after 1 hour.');
         } else {
           return redirect()->back()->with('message','糟糕，您已超过最大尝试次数。 请在1小时后尝试。');
         }
      } else {
          if($checkCardNumber->cardNumber == $request->cardNumber){

             // get KYC DETAILS start

             // create token start
               $token_headers[] = 'Authorization:Basic eGluZmluaXR5X2FwaTpmUW9NaEwzajhNTDlZQ2RadTNlSg==';
               $token_headers[] = 'Content-Type: application/json';
               $token_data = '';
               $make_call = BaseFunction::callAPISum('POST', 'https://api.sumsub.com/resources/auth/login',$token_data,$token_headers,'');
               $token_response = json_decode($make_call, true);
             // create token end

             // create access-token start
               $access_headers[] = 'Accept: application/json';
               $access_headers[] = 'Authorization:Bearer '.$token_response['payload'].'';
               $access_data = '';
               $make_call = BaseFunction::callAPISum('POST','https://api.sumsub.com/resources/accessTokens?userId='.Auth::user()->id.'&ttlInSecs=600',$access_data,$access_headers,'');
               $access_response = json_decode($make_call, true);
             // create access-token end

             // get Applican details start
                  $curl = curl_init();
                  curl_setopt_array($curl, array(
                   CURLOPT_URL => "https://api.sumsub.com/resources/applicants/{$checkCardNumber->appid}",
                   CURLOPT_RETURNTRANSFER => true,
                   CURLOPT_ENCODING => "",
                   CURLOPT_MAXREDIRS => 10,
                   CURLOPT_TIMEOUT => 30,
                   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                   CURLOPT_CUSTOMREQUEST => "GET",
                   CURLOPT_HTTPHEADER => array(
                     "Accept: */*",
                     "Accept-Encoding: gzip, deflate",
                     "Authorization: Bearer {$access_response['token']}",
                     "Cache-Control: no-cache",
                     "Connection: keep-alive",
                     "Content-Type: application/json",
                   ),
                  ));
                  $response = curl_exec($curl);
                  $err = curl_error($curl);
                  curl_close($curl);
                  if ($err) {
                   echo "cURL Error #:" . $err;
                  } else {
                   $infoArray = json_decode($response);

                   if(array_key_exists('lastName', $infoArray->list->items[0]->info)){
                        $kyc_name = $infoArray->list->items[0]->info->lastName;
                    } elseif(array_key_exists('firstName', $infoArray->list->items[0]->info)){
                        $kyc_name = $infoArray->list->items[0]->info->firstName;
                    } else {
                        $kyc_name = $checkCardNumber->first_name.' '.$checkCardNumber->last_name;
                    }

                   // get Applican details end

                   // get KYC DETAILS start
                     $curl = curl_init();
                      curl_setopt_array($curl, array(
                        CURLOPT_URL => "https://api.sumsub.com/resources/applicants/{$checkCardNumber->appid}/requiredIdDocsStatus",
                        CURLOPT_RETURNTRANSFER => true,
                        CURLOPT_ENCODING => "",
                        CURLOPT_MAXREDIRS => 10,
                        CURLOPT_TIMEOUT => 30,
                        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                        CURLOPT_CUSTOMREQUEST => "GET",
                        CURLOPT_HTTPHEADER => array(
                          "Accept: */*",
                          "Accept-Encoding: gzip, deflate",
                          "Authorization: Bearer {$access_response['token']}",
                          "Cache-Control: no-cache",
                        ),
                      ));
                    $response = curl_exec($curl);
                    $err = curl_error($curl);
                    curl_close($curl);
                    if ($err) {
                      echo "cURL Error #:" . $err;
                    } else {
                      $kycArray = json_decode($response);
                      $docs = array_merge($kycArray->IDENTITY->imageIds, $kycArray->SELFIE->imageIds);
                    }
                   // get KYC DETAILS end
                 //get image details of images start
                    $imgArray = array();
                    foreach ($docs as $key => $value) {
                      $curl = curl_init();
                       curl_setopt_array($curl, array(
                         CURLOPT_URL => "https://api.sumsub.com/resources/inspections/{$checkCardNumber->inspectionId}/resources/{$value}",
                         CURLOPT_RETURNTRANSFER => true,
                         CURLOPT_ENCODING => "",
                         CURLOPT_MAXREDIRS => 10,
                         CURLOPT_TIMEOUT => 30,
                         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                         CURLOPT_CUSTOMREQUEST => "GET",
                         CURLOPT_HTTPHEADER => array(
                           "Accept: */*",
                           "Authorization: Bearer {$access_response['token']}",
                         ),
                       ));
                     $response = curl_exec($curl);
                     $err = curl_error($curl);
                     curl_close($curl);
                     if ($err) {
                       echo "cURL Error #:" . $err;
                     } else {
                       $data = 'data:image/png;base64,'.base64_encode($response);
                       $image_parts = explode(";base64,", $data);
                       $image_type_aux = explode("image/", $image_parts[0]);
                       $image_type = $image_type_aux[1];
                       $image_base64 = base64_decode($image_parts[1]);
                       $new_name = 'public/img/kyc/'.Auth::user()->id.'--'.date('YmdHis'). '.png';
                       file_put_contents($new_name,$image_base64);
                       // $imgArray['files'][] = URL::to('/').'/'.$new_name.";filename=".Auth::user()->id.'--'.date('YmdHis'). '.png';
                       $imgArray['remote_urls'][] = URL::to('/').'/'.$new_name;
                     }
                    }
                 //get image details of images end

             // create boundless new card account start
             $headers = array();
             $headers[] = 'Content-Type: application/json';
             $data_array = array (
                             'card_number' => $checkCardNumber->cardNumber,
                             'email' => $checkCardNumber->email,
                             'info' =>
                           array (
                             'dob' => $infoArray->list->items[0]->info->dob,
                             'pep' => 'false',
                             'city' => $checkCardNumber->city,
                             'state' => $checkCardNumber->state,
                             'country' => $checkCardNumber->countryName,
                             'zipcode' => $checkCardNumber->pincode,
                             'address1' => $checkCardNumber->address1,
                             'address2' => $checkCardNumber->address2,
                             'first_name' => $kyc_name,
                             'idDocType' => $infoArray->list->items[0]->info->idDocs[0]->idDocType,
                             'passport_id' => $infoArray->list->items[0]->info->idDocs[0]->number,
                             'nationality' => $infoArray->list->items[0]->info->country,
                             'phone_number' => $checkCardNumber->contactNumber,
                           ),
                        );

               $make_call = BaseFunction::callAPI('POST','https://boundlesspay.exchange/api/v1/users',json_encode($data_array),$headers);
               $response = json_decode($make_call, true);

               // send multiple Image in BP Plateform Start

                 $img_headers = array();
                 $img_headers[] = 'Content-Type:application/json';
                 $img_call = BaseFunction::callAPI('POST','https://boundlesspay.exchange/api/v1/users/'.$checkCardNumber->cardNumber.'/attachments/remote_urls',json_encode($imgArray),$img_headers);
                 $img_response = json_decode($img_call, true);

               // send multiple Image in BP Plateform end
               if(array_key_exists('errors',$response)){
                  if(app()->getLocale() == 'en'){
                      return redirect()->back()->with('message','Oops,You entered Email OR Card Number is already Exist in BoundlessPay System,Please contact Admin.');
                  } else {
                      return redirect()->back()->with('message','哎呀，您输入的电子邮件或卡号已经存在于BoundlessPay系统中，请联系管理员。');
                  }
               } else {

               $up['cardStatus'] = 'verified';
               $up['balance_usd'] = $response['balance_usd'];
               $up['balance_btc'] = $response['balance_btc'];
               $up['balance_eth'] = $response['balance_eth'];
               $up['cardCount'] = $checkCardNumber['cardCount'] + 1;
               $updateCardStatus = User::where('id',Auth::user()->id)->update($up);
             // create boundless new card account end
             if(app()->getLocale() == 'en'){
                return redirect('card/dashboard')->with('message','Your card verification is successful. Welcome!!');
             } else {
               return redirect('card/dashboard')->with('message','您的卡验证成功。 欢迎！！');
             }
            }
          }
        } else {
              $insertCardCount = User::where('id',Auth::user()->id)->update(['cardCount' => $checkCardNumber->cardCount+1]);
              if(app()->getLocale() == 'en'){
                  return redirect()->back()->with('message','Oops,You entered an invalid card number! Please input the 16 digits card number found on your debit card.');
              } else {
                  return redirect()->back()->with('message','糟糕，您输入的卡号无效！ 请输入您的借记卡上的16位卡号。');
              }
          }
     }//count else over
    }
  public function payment(){

    if(Auth::user()->email_verified_at == null){
         return redirect('email/verify');
      } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 0){
         return redirect('2fa');
      } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 0) {
         return redirect('card/kyc');
      } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 1 && (Auth::user()->cardStatus == 'paid' || Auth::user()->cardStatus == 'assigned' || Auth::user()->cardStatus == 'pending')){
         return redirect('card/verify');
      } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 1 && Auth::user()->cardStatus == 'verified'){
         return redirect('card/dashboard');
      } else {
         return view('Frontend.payment');
      }

  }

  public function dashboard(){

      if(Auth::user()->email_verified_at == null){
           return redirect('email/verify');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 0){
           return redirect('2fa');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 0) {
           return redirect('card/kyc');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 1 && Auth::user()->cardStatus == 'unpaid'){
           return redirect('card/card-policy');
        } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1 && Auth::user()->is_kyc_approved == 1 && (Auth::user()->cardStatus == 'paid' || Auth::user()->cardStatus == 'assigned' || Auth::user()->cardStatus == 'pending')){
           return redirect('card/verify');
        } else {
           $paymentDetail = Loadcard::where('userId',Auth::user()->id)->get();
           $total = Loadcard::where('userId',Auth::user()->id)->where('status','pending')->sum('amount');
           return view('Frontend.dashboard',compact('paymentDetail','total'));
        }
  }

  public function hacker_kyc_verification(){

    if(Auth::user()->email_verified_at == null){
         return redirect('email/verify');
      } elseif(Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 0){
         return redirect('2fa');
      } elseif(Auth::user()->cardStatus == 'unpaid' && Auth::user()->is_kyc_approved == 1 && Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1){
         return redirect('card/card-policy');
      } elseif((Auth::user()->cardStatus == 'paid' || Auth::user()->cardStatus == 'assigned' || Auth::user()->cardStatus == 'pending') && Auth::user()->is_kyc_approved == 1 && Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1){
         return redirect('card/verify');
      } elseif(Auth::user()->cardStatus == 'verified' && Auth::user()->is_kyc_approved == 1 && Auth::user()->email_verified_at != null && Auth::user()->google2fa_enable == 1){
         return redirect('card/dashboard');
    } else {

  $userId = Auth::user()->id;

// create token start
  $token_headers[] = 'Authorization:Basic eGluZmluaXR5X2FwaTpmUW9NaEwzajhNTDlZQ2RadTNlSg==';
  $token_headers[] = 'Content-Type: application/json';
  $token_data = '';
  $make_call = BaseFunction::callAPISum('POST', 'https://api.sumsub.com/resources/auth/login',$token_data,$token_headers,'');
  $token_response = json_decode($make_call, true);
// create token end

// create access-token start
  $access_headers[] = 'Accept: application/json';
  $access_headers[] = 'Authorization:Bearer '.$token_response['payload'].'';
  $access_data = '';
  $make_call = BaseFunction::callAPISum('POST','https://api.sumsub.com/resources/accessTokens?userId='.$userId.'&ttlInSecs=600',$access_data,$access_headers,'');
  $access_response = json_decode($make_call, true);
// create access-token end


// get applicant API start
  $baseUrl = KYC_LIVE;
  $email = Auth::user()->email;
  $firstName = Auth::user()->first_name;
  $lastName = Auth::user()->last_name;

  $configParamsString = '{
    "applicant": {
        "email": "'.$email.'",
        "requiredIdDocs": {
            "docSets": [{
                "idDocSetType": "IDENTITY",
                "types": ["PASSPORT"]
            }, {
                "idDocSetType": "SELFIE",
                "types": ["SELFIE"]
            }]
        },
        "externalUserId": "'.$userId.'"
    }
  }';
    $payload = $configParamsString;
    $headers = array();
    $headers[] = 'Authorization: Bearer '.$token_response['payload'].'';
    $headers[] = 'Accept: application/json';
    $headers[] = 'Content-Type: application/json';
    $headers[] = 'Content-Length: '.strlen($configParamsString).'';
    $make_call = BaseFunction::callAPISum('POST','https://api.sumsub.com/resources/accounts/-/applicantRequests',$configParamsString,$headers,$payload);
    $response = json_decode($make_call, true);

// get applicant API end
  $access_token = $access_response['token'];
  $clientId = 'xinfinity';
    return view('Frontend.KYC',compact('userId','baseUrl','clientId','access_token'));
    } // condition status else loop end

  }

  public function paymentType(Request $request){

    $checkPurchase = Payment::where('userId',Auth::user()->id)->first();

    if($checkPurchase){
        if($checkPurchase->paymentType == 'alipay'){
            $type = 'AliPay';
        } elseif($checkPurchase->paymentType == 'wechat'){
            $type = 'WeChat';
        } elseif($checkPurchase->paymentType == 'erc20'){
            $type = 'UBank App';
        } elseif($checkPurchase->paymentType == 'xif'){
            $type = 'XIF App';
        } else {
            $type = 'Bonus';
        }
        if(app()->getLocale() == 'en'){
          return redirect()->back()->with('message','You already purchased using  '.$type.'.');
        } else {
          return redirect()->back()->with('message','你已经购买了  '.$type.'.');
        }

    }

    if($request->paymentType == 'free'){

      $this->validate($request, [
            'paymentType' => 'required',
            'account' => 'required|numeric'
        ]);
    } else {
      $this->validate($request, [
            'paymentType' => 'required',
            'amount' => 'required'
        ]);
    }

    $data['userId'] = Auth::user()->id;
    $data['paymentType'] = $request->paymentType;
    $data['amount'] = $request->amount ? $request->amount : '0.00';
    $data['account'] = $request->account ? $request->account : 'null';

    $store = new Payment();
    $store->fill($data);
    if($store->save()){
      $updateStatus = User::where('id',Auth::user()->id)->update(['cardStatus' => 'paid']);
      return redirect('card/verify');
    }

  }

  public function updateByUser(Request $request){

      $update = Loadcard::where('id',$request->paymentId)->update(['status' => 'cancelByUser']);

      if($update){
        $status = 'cancelByUser';
      }
      return response()->json($status);
    }

  public function loadCard(Request $request){
     $this->validate($request, [
       'amount' => 'required|numeric|max:2400',
       '2fa' => 'required|numeric',
       'paymentType' => 'required'
     ]);

       if($request->amount > 299.99){
         $loadCutOff = $request->amount * ((100-1) / 100);
         // $loadCutOff = $request->amount * ((100-1.5) / 100);
       } else {
         $loadCutOff = $request->amount - 3;
         // $loadCutOff = $request->amount - ((100-1) / 100) + 3;
       }

       $loadFee = $request->amount - $loadCutOff;
       $partnerCuttOff = $request->amount * ((100-1.50) / 100);
       $partnerFee = $request->amount - $partnerCuttOff;
       $finalAmount = $request->amount - ($partnerFee + $loadFee);

     $sec = Auth::user()->google2fa_secret;
     $optp = $request->input('2fa');
     $google = new Google2FA();
     $valid = $google->verifyKey($sec,$optp);
      if($valid){
         $data['userId'] = Auth::user()->id;
         $data['amount'] = $request->amount;
         $data['partnerFee'] = round($partnerFee,2);
         $data['cardLoadFee'] = round($loadFee,2);
         $data['finalAmount'] = round($finalAmount,2);
         $data['paymentType'] = $request->paymentType;
         $store = new Loadcard();
         $store->fill($data);
         $store->save();
         if(app()->getLocale() == 'en'){
           return redirect()->back()->with('message','Card Load Request Submitted!');
         } else {
           return redirect()->back()->with('message','提交卡加载请求！');
         }

      } else {
          if(app()->getLocale() == 'en'){
            return redirect()->back()->withErrors(['invalid 2FA OTP']);
          } else {
            return redirect()->back()->withErrors(['2FA OTP无效']);
          }
      }
  }

  public function check2fa(Request $request){
    if($request->fa == ''){
        $status = 'null';
    } else {
      $sec = Auth::user()->google2fa_secret;
      $optp = $request->input('fa');
      $google = new Google2FA();
      $valid = $google->verifyKey($sec,$optp);
      if($valid){
        $status = 'valid';
      } else {
        $status = 'invalid';
      }
    }
    return response()->json($status);
  }


  public function cardPolicy(){
    return view('Frontend.card-policy');
  }

}
