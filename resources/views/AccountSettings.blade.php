@extends('layouts.app')

@section('content')

<div class="settings-page">
  <div class="settings-container">
    <h1 class="page-title">Account</h1>
    <div class="settings-section">
      <h2 class="settings-title">General Information</h2>
        <div class="non-active-form">
          <input type="text" id="Full_Name" name="FullName" value="Adham Jammal" ><i id="Edit_Full_Name" class="fas fa-pen"></i>
        </div>
   <div>
     <div class="non-active-form">
       <input type="text" id="Address" name="Address" class="capitalize" value="Lattakia Street NO.9"><i id="Edit_Address"class="fas fa-pen"></i>
     </div>
    </div>
    <div>
      <div class="non-active-form">
        <input type="text" name="PhoneNumber" class="capitalize" id="Number" value="+963 992 452 012"><i id="Edit_Number" class="fas fa-pen"></i>
      </div>
    </div>
    <div>
      <div class="non-active-form">
        <input type="email" name="Email" id="Email" value="Adhamjammal@test.com"><i id="Edit_Email" class="fas fa-pen"></i>
      </div>
    </div>
    <button id="Save_Button" class="btn button full" type="submit">Save</button>
  </div>
<div class="settings-section">
  <h2 class="settings-title">My profile</h2>
  <form class="form my-form">
    <div class="img-upload-container">
      <label class="img-upload btn btn-bwm" style="background-image: url(&quot;/profile-placeholder.jpg&quot;);">
        <input type="file" accept=".jpg, .png, .jpeg, .gif" value="">
      </label>
      <h4>Change Your Profile Picture</h4>
      <div class="upload-image">
      <input type="file" class="imgInp" data-id="img1">
      </div>
      <div class="img-preview-container">
        <div class="img-preview" style="background-image: url('http://www.personalbrandingblog.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png');">
        </div>
      </div>
    </div>
    <div class="form-submit">
      <button class="btn button full" type="submit">Save New Picture</button>
    </div>
  </form>
</div>
<div class="settings-section">
  <h2 class="settings-title">Password</h2>
  <form class="form my-form">
    <div class="form-group">
      <div class="input-group">
        <input name="currentPassword" placeholder="Old Password" type="password" class="form-control" autocomplete="Old Password" style="border-radius: 4px;"  value="">
        <span class="focus-input"></span>
      </div>
    </div>
    <div class="form-group">
      <div class="input-group">
        <input name="password" placeholder="New Password" type="password" class="form-control"  autocomplete="New Password" style="border-radius: 4px;" value="">
        <span class="focus-input"></span>
      </div>
    </div>
   <div class="form-submit right">
     <button class="btn button full" type="submit" class="Save-Buttons">Change Password</button>
    </div>
  </form>
</div>
</div>
</div>
@endsection