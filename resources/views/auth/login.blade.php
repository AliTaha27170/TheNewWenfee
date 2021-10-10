<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel='stylesheet' href="{{ asset('css/signin.css') }}" />

<div class="main_div">
    <div class="title">WENFEE</div>

    <form action="{{route('login')}} "method="POST">
      @csrf
      <div class="input_box">
        <input type="text" placeholder="Email" name="email" required>
        <div class="icon"><i class="fas fa-user"></i></div>
      </div>
      <div class="input_box">
        <input type="password" name="password" placeholder="Password" required>

        <div class="icon"><i class="fas fa-lock"></i></div>
      </div>
      <div class="option_div">
        <div class="check_box">
          <input type="checkbox">
          <span>Remember me</span>
        </div>
        <div class="forget_div">

            @if (Route::has('password.request'))
          <a href="{{ route('password.request') }}">Forgot password?</a>
          @endif

        </div>
      </div>
      <div class="input_box button">
        <input type="submit" value="Login">
      </div>
      <div class="sign_up">

        Not a member? <a href="/register">Signup now</a>


      </div>
    </form>
  </div>