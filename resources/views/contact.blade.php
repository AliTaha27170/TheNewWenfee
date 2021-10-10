@extends('layouts.app')
@section('content')
<div class="Contact-container">
  <div class="content">
    <div class="left-side">
      <div class="address details">
        <i class="fas fa-map-marker-alt"></i>
        <div class="topic">Address</div>
        <div class="text-one">7184 Troy Hill Drive SUIT C Elkridge MD 21075 USA</div>
      </div>
      <div class="phone details">
        <i class="fas fa-phone-alt"></i>
        <div class="topic">Phone</div>
        <div class="text-one">	(301) 202-7905 </div>
        <div class="text-two"> (410) 379-2267 </div>
      </div>
      <div class="Fax details">
      <i class="fas fa-fax"></i>
        <div class="topic">Fax</div>
        <div class="text-one">	(240) 337-6468 </div>
      </div>
      <div class="email details">
        <i class="fas fa-envelope"></i>
        <div class="topic">Email</div>
        <div class="text-one">info@wenfee.com</div>
        <div class="text-two">products@wenfee.com</div>
        <div class="text-three">suggestions@wenfee.com</div>
        <div class="text-four">eorders@wenfee.com</div>
      </div>
    </div>
    <div class="right-side">
      <div class="topic-text">Send us a message</div>
      <p>If you have any Question , you can send us message from here.<br> It's our pleasure to help you.</p>
      <form action="#" method="POST" action="{{ route('contact.store') }}">
        {{ csrf_field() }}
        {{-- <div class="input-box">
          <input type="text" placeholder="Enter Your name" name="mail">
        </div> --}}
        <div class="input-box">
          <input type="Email" placeholder="Enter Your Email" name="mail">
        </div>
        <div class="input-box message-box">
           <textarea name="message" value="message" id="message" class="form-control" rows="3" placeholder="Your Message" required></textarea>
        </div>
        <div class="button">
          <input type="submit" value="Send Now" >
        </div>
      </form>
    </div>
  </div>
</div>
<!-- map -->
<div class="Contact-container"style="padding: 020px;">
<div class="google-maps">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4436.563288335262!2d-76.74920380408464!3d39.19409239099808!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7e1913f4b4fdb%3A0x18a1a674d9c0d7ad!2s7184%20Troy%20Hill%20Dr%2C%20Elkridge%2C%20MD%2021075%2C%20USA!5e0!3m2!1sen!2sro!4v1573996589257!5m2!1sen!2sro" frameborder="0" style="border:0; width:100%" allowfullscreen=""></iframe>
                    </div>
</div>
<!-- map -->
<style>
body
{
    background : #007b7029 ;
}
.footer 
{
display : none ;
}
</style>
@endsection