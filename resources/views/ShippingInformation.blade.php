@extends('layouts.app')

@section('content')
 
<section class="section_all bg-light" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section_title_all text-center">
                            <h3 class="font-weight-bold"><span class="text-custom">Shipping Information</span></h3>
                        </div>
                    </div>
                </div>

                <div class="row vertical_content_manage mt-5">
                    <div class="col-lg-12">
                        <div class="about_header_main mt-3">
                            <div class="about_icon_box">
                            </div>
                            <p class="About-Text text-muted mt-3"><span style="font-weight : bold;">We use UPS as our main shipping carrier. Shipping rates are automatically calculated using UPS current shipping rates published in their web site.</span> <br> 

Our UPS Ground Flat $11.99 (Continental USA Only) shipping method applies to orders up to 10 pounds in weight and within the continental USA only. Each additional 10 pounds will cost you an additional $1  (up to 200 lbs). Orders over 200 lbs will be adjusted at our office and customers will be contacted with the correct shipping charges. Refrigerated and frozen items are excluded. If your order includes any refrigerated or frozen items, please check below for Frozen and Refrigerated instructions. Orders to Alaska and Hawaii need to be shipped via either UPS Next Day or 2nd Day Air services. <br>

If your total order weighs more than 40 Lbs., your order will be shipped in more than one package. This means that the maximum weight in a single package can not exceed 40 Lbs. <br>

Wenfee carefully packages every order to insure safety and freshness, and uses the best packaging materials for all shipments. If, for any reason, your order does not arrive in a satisfactory condition, call or e-mail us within 24 hours of receipt of the order. Please save all packaging materials together so that a damage assessment can be made and we fix the problem accordingly. <br>

Frozen and Refrigerated items are shipped on Monday and Tuesday of every week with UPS regular ground service to Maryland, District of Columbia, and Northern Virginia. Frozen and refrigerated items for all other areas are shipped UPS Next Day Air or UPS 2nd Day Air delivery. Please select the appropriate shipping method when your order contains refrigerated and/or frozen items. <br>

We reserve the right to change the carrier given that it will take the same or less number of days to arrive to you compared to the original shipping method that you selected. <br>

If you have any question about your order, please do not hesitate to contact our orders department. <br> <br>

<span style="font-weight : bold; color  : #007b70;"> INTERNATIONAL ORDERS: <br> </span>

are currently unavailable. We can only ship to addresses within the Continental USA in addition to Alaska and Hawaii. <br>

We currently do NOT ship Orders to countries other than the USA. <br> <br>

<span style="font-weight : bold; color : #007b70;"> RETURN POLICY: <br> </span>

We will return any item for exchange or full refund if the item is still in its original condition, unopened and undamaged. However, shipping charges for returning any item is the responsibility of the customer. Items must be returned within 30 days from the time received.</p> <br>
                        </div>
                    </div>
                    <!--
                    <div class="col-lg-6">
                        <div class="img_about mt-3">
                            <img src="https://www.moda-sitesi.com/wp-content/uploads/2019/05/3.png" alt="" class="About-image img-fluid mx-auto d-block">
                        </div>
                    </div>
                </div>

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
                                <i class="fas fa-check-circle"></i>
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
            </div>-->

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