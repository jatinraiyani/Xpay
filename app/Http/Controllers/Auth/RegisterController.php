<?php

namespace App\Http\Controllers\Auth;

use App\User;
use DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Mail;
use App\Mail\RegistrationMail;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '2fa';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'contactNumber' => ['required','numeric'],
            'countryCode' => ['required','numeric'],
            'countryName' => ['required'],
            'address1' => ['required'],
            'address2' => ['nullable'],
            'city' => ['required'],
            'state' => ['required'],
            'pincode' => ['required','numeric'],
            'd_country' => ['required']
        ],
         [ 'pincode.required' => 'The Postal code must be a number.',
           'd_country.required' => 'The Country name required.'
          ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        $data['password'] = Hash::make($data['password']);
        $register = new User();
        $register->fill($data);

    if($register->save()){

      $setRole = DB::table('role_user')->insert(['user_id' => $register->id,'role_id' => 2]);
      $response = $register->first_name.'_'.$register->last_name;
      Mail::to($data['email'])->send(new RegistrationMail($response));

     }
      return $register;

    }
}
