@extends('layouts.app')

@section('content')
<div class="container">
  <div class="content">
    <div class="left-side">
      <div class="address details">
        <i class="fas fa-map-marker-alt"></i>
        <div class="topic">Address</div>
        <div class="text-one">7184 Troy Hill Drive SUIT C Elkridge MD 21075 USA</div>
        <!-- <div class="text-two">Birendranagar 06</div> -->
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
          <input type="text" placeholder="Enter Your name" name="mail" value="mail">
        </div> --}}
        <div class="input-box">
          <input type="Email" placeholder="Enter Your Email" name="mail" value="mail">
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
<div class="container"style="padding: 020px;">
<div class="google-maps">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4436.563288335262!2d-76.74920380408464!3d39.19409239099808!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7e1913f4b4fdb%3A0x18a1a674d9c0d7ad!2s7184%20Troy%20Hill%20Dr%2C%20Elkridge%2C%20MD%2021075%2C%20USA!5e0!3m2!1sen!2sro!4v1573996589257!5m2!1sen!2sro" frameborder="0" style="border:0; width:100%" allowfullscreen=""></iframe>
                    </div>
</div>
<!-- map -->


<style>
/* Google Font CDN Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins" , sans-serif;
}
body
{
    background : #007b7029 ;
}
.container{
  width: 85%;
  margin : 30px auto ;
  background: #fff;
  border-radius: 6px;
  padding: 20px 60px 30px 40px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.container .content{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.container .content .left-side{
  width: 40%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-top: 15px;
  position: relative;
}
.content .left-side::before{
  content: '';
  position: absolute;
  height: 70%;
  width: 2px;
  right: -15px;
  top: 50%;
  transform: translateY(-50%);
  background: #afafb6;
}
.content .left-side .details{
  margin: 14px;
  text-align: center;
}
.content .left-side .details i{
  font-size: 30px;
  color: #007B70;
  margin-bottom: 10px;
}
.content .left-side .details .topic{
  font-size: 18px;
  font-weight: 500;
}
.content .left-side .details .text-one,
.content .left-side .details .text-two, .text-three, .text-four{
  font-size: 14px;
  color: #afafb6;
}
.container .content .right-side{
  width: 60%;
  margin-left: 75px;
}
.content .right-side .topic-text{
  font-size: 23px;
  font-weight: 600;
  color: #007B70;
}
.right-side .input-box{
  height: 50px;
  width: 100%;
  margin: 12px 0;
}
.right-side .input-box input,
.right-side .input-box textarea{
  height: 100%;
  width: 100%;
  border: none;
  outline: none;
  font-size: 16px;
  background: #F0F1F8;
  border-radius: 6px;
  padding: 0 15px;
  resize: none;
}
.right-side .message-box{
  min-height: 110px;
}
.right-side .input-box textarea{
  padding-top: 6px;
}
.right-side .button{
  display: inline-block;
  margin-top: 12px;
}
.right-side .button input[type="submit"]{
  color: #fff;
  font-size: 18px;
  outline: none;
  border: none;
  padding: 8px 16px;
  border-radius: 6px;
  background: #007B70;
  cursor: pointer;
  transition: all 0.3s ease;
}
.button input[type="submit"]:hover{
  background: #006058;
}

@media (max-width: 950px) {
  .container{
    width: 90%;
    padding: 30px 40px 40px 35px ;
  }
  .container .content .right-side{
   width: 75%;
   margin-left: 55px;
}
}
@media (max-width: 820px) {
  .container{
    margin: 40px auto;
    height: 100%;
  }
  .container .content{
    flex-direction: column-reverse;
  }
 .container .content .left-side{
   display : block ;
   width: 100%;
   flex-direction: row;
   margin-top: 40px;
   justify-content: center;
   flex-wrap: wrap;
 }
 .container .content .left-side::before{
   display: none;
 }
 .container .content .right-side{
   width: 100%;
   margin-left: 0;
 }
}
.footer {
display : none ;
}
iframe
{
    height : 350px ;
}
</style>
@endsection