@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        @include('partials.inc.messages')
    </div>
</div>
<link rel='stylesheet' href="{{ asset('css/signin.css') }}" />
<div class="login-form right-panel-active" id="login-form">
    <div class="form-container sign-up-container">
        <form action="{{route('register')}}" method="POST">
            @csrf
            <h1>Create Account</h1>
            <input type="text" placeholder="FullName" name="name" required />
            <input type="text" placeholder="Phone" name="phone" required />
            <input type="text" placeholder="Address" name="address" required />
            <input type="email" placeholder="Email" name="email" required />
            <input type="password" placeholder="Password" name="password" required />
            <input  type="password" placeholder="Confirm Password"  name="password_confirmation" required>
            <button>Sign Up</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="{{route('login')}}" method="POST">
            @csrf
            <h1>Sign in</h1>
            <input type="email" name="email" required placeholder="Email" />
            <input required type="password" name="password" placeholder="Password" />
            @if (Route::has('password.request'))
            <a href="{{ route('password.request') }}">Forgot your password?</a>
            @endif
            <button>Sign In</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="ghost" id="signIn">Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
                <button class="ghost" id="signUp">Sign Up</button>
            </div>
        </div>
    </div>
</div>

<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('login-form');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
        setTimeout(function(){
            $(".login-form .sign-in-container").css("display", "none");
        }, 600)
    });
    
    signInButton.addEventListener('click', () => {
        $(".login-form .sign-in-container").css("display", "block");
        container.classList.remove("right-panel-active");
    });

</script>
@endsection
