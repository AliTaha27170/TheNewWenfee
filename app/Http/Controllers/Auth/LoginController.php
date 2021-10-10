<?php

namespace App\Http\Controllers\Auth;
use View;
use App\Models\ProductCategory;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        session(['url.intended' => url()->previous()]);
        $this->redirectTo = session()->get('url.intended');
        $this->middleware('guest')->except('logout');
        parent::__construct();
    }
    public function destroy()
    {
        auth()->logout();
        
        return redirect()->to('/login');
    }
}
