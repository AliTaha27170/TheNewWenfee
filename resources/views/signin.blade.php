@extends('layouts.app')

@section('content')

    <link rel='stylesheet' href="{{ asset('css/signin.css') }}" />
    <div class="login-form" id="login-form">
        <div class="form-container sign-up-container">
            <form action="#">
                <h1>Create Account</h1>
                <input type="text" placeholder="Name" />
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="#">
                <h1>Sign in</h1>
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <a href="#">Forgot your password?</a>
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
            setTimeout(function() {
                $(".login-form .sign-in-container").css("display", "none");
            }, 600)
        });

        signInButton.addEventListener('click', () => {
            $(".login-form .sign-in-container").css("display", "block");
            container.classList.remove("right-panel-active");
        });

    </script>
@endsection
