<?php

namespace App\Http\Controllers;

use Session;
use Auth;
use App\Models\User;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        parent::__construct();
    }
    
    public function profile()
    {
        $user_orders=Auth::user()->orders()->with('products')->get();
        
        return view('profile',compact('user_orders'));
    }

    public function editProfile(Request $request)
    {   $request->validate([
        'name' =>'required',
        'phone'=>'required',
        'email'=>'required',
        'address'=>'required',

    ]);
     $user=User::whereId(Auth::id())->first();
        $user->name=$request->name;
        $user->phone=$request->phone;
        $user->email=$request->email;
        $user->address=$request->address;
        $user->display_name=$request->display_name;
        $user->save();
        Session::flash('msg', 'Your Profile has been updated.');
        return redirect()->back();
    }
}
