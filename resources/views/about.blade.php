@extends('layouts.app')

@section('content')
 
<section class="section_all bg-light" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section_title_all text-center">
                            <h3 class="font-weight-bold">Welcome To <span class="text-custom">WENFEE</span></h3>
                        </div>
                    </div>
                </div>

                <div class="row vertical_content_manage mt-5">
                    <div class="col-lg-12">
                        <div class="about_header_main mt-3">
                            <div class="about_icon_box">
                            </div>
                            <p class="About-Text text-muted mt-3">Welcome to Wenfee.com <br> We have specialized in gourmet foods since 1965, and we aim to offer our customers a variety of the latest Middle Eastern Products. We’ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget friendly products. We offer all of this while providing excellent customer service and friendly support. <br> <br> The interests of our customers are always the top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you. <br> <br> <span style="color : #007B70 ; font-weight : 500">We know you have a choice. <br> Thank You for Choosing to Shop with us. <br> We Appreciate your Business. </span> </p>
                        </div>
                    </div>
                    <!--
                    <div class="col-lg-6">
                        <div class="img_about mt-3">
                            <img src="https://www.moda-sitesi.com/wp-content/uploads/2019/05/3.png" alt="" class="About-image img-fluid mx-auto d-block">
                        </div>
                    </div>
                </div>
-->

                <div class="row mt-3">
                    <div class="col-lg-4">
                        <div class="about_content_box_all mt-3">
                            <div class="about_detail text-center">
                                <div class="about_icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <h5 class="text-dark text-capitalize mt-3 font-weight-bold">Order Delivery</h5>
                                <p class="edu_desc mt-3 mb-0 text-muted">To any State.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="about_content_box_all mt-3">
                            <div class="about_detail text-center">
                                <div class="about_icon">
                                    <i class="far fa-money-bill-alt"></i>
                                </div>
                                <h5 class="text-dark text-capitalize mt-3 font-weight-bold">Trusted Payment</h5>
                                <p class="edu_desc mb-0 mt-3 text-muted">100% Payment Protection.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="about_content_box_all mt-3">
                            <div class="about_detail text-center">
                                <div class="about_icon">
                                    <i class="fas fa-shipping-fast"></i>
                                </div>
                                <h5 class="text-dark text-capitalize mt-3 font-weight-bold">Shipping</h5>
                                <p class="edu_desc mb-0 mt-3 text-muted">Get a Safety Shipping Process By Land or Sea.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<style>
   h1, h2, h3, h4, h5, h6 {
    color: #2c3145;
}
a, a:hover, a:focus, a:active {
    text-decoration: none;
    outline: none;
}
ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

.section_all {
    position: relative;
    padding-top: 80px;
    padding-bottom: 80px;
    min-height: 100vh;
}
.section-title {
    font-weight: 700;
    text-transform: capitalize;
    letter-spacing: 1px;
}

.section-subtitle {
    letter-spacing: 0.4px;
    line-height: 28px;
    max-width: 550px;
}

.section-title-border {
    background-color: #000;
    height: 1 3px;
    width: 44px;
}

.section-title-border-white {
    background-color: #fff;
    height: 2px;
    width: 100px;
}
.text_custom {
    color: #00bd2a;
}

.about_icon i {
    font-size: 35px;
    height: 65px;
    width: 65px;
    line-height: 65px;
    display: inline-block;
    background: #fff;
    border-radius: 35px;
    color: #007B70;
    box-shadow: 0 8px 20px -2px rgba(158, 152, 153, 0.5);
}

.about_header_main .about_heading {
    max-width: 450px;
    font-size: 24px;
}

.about_icon span {
    position: relative;
    top: -10px;
}

.about_content_box_all {
    padding: 28px;
}
.text-custom
{
    font-size: 40px;
    color: #007b70;
    font-weight: 500;
}
.About-image
{ 
    margin-top :2rem ;
    border-radius: 8px;
    height: 333px;
}
.About-Text
{
    font-size: 19px;
}
.About-Text::first-letter
{
    font-size :30px;
    font-weight : 500 ;
    color : #007B70;
}

</style>
@endsection