@extends('layouts.app')
@section('content')
<!-- 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

    <div class="my-cart">
        <div class="row">
            <div class="col-md-8">
                <div class="shopping-cart">
                    <div class="title">
                        <h1>Shopping Cart</h1>
                        <h2>{{ Cart::count() > 0 ? Cart::count() : 0 }} Items</h2>
                    </div>
                    <hr class="solid">
                    <div class="small-container cart-page">
                        <table>
                            <tr>
                                <th>PRODUCT DETAILS</th>
                                <th style="width:100px;">QUANTITY</th>
                                <th style="width:100px;">PRICE</th>
                                <th style="width:100px;">TOTAL</th>
                            </tr>
                            @foreach (Cart::instance('default')->content() as $item)
                                <tr>
                                    <td>
                                        <div class="cart-info">
                                            <img src="{{ Voyager::image($item->model->thumbnail('cropped')) }}" />
                                            <div>
                                                <p>{{ $item->model->name }}</p>

                                                <br>
                                                <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                                    {{ csrf_field() }}
                                                    {{ method_field('DELETE') }}
                                                    <button type="submit" class="cart-options">Remove</button>
                                                </form>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="counter">
                                        <button id="plus-btn">&#43;</button>
                                        <input value="{{ $item->qty }}" data-id="{{ $item->rowId }}">
                                        <button id="minus-btn">&#8722;</button>
                                    </td>

                                    <td>${{ $item->price }}</td>
                                    <td>${{ $item->total() }}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>

                </div>
            </div>
            <div class="col-md-4">
                <div class="Order-Summary">
                    <h2 style="padding: 12px;">Order Summary</h2>
                    <hr class="solid">
                    <div class="i">
                        <p>Items {{ Cart::count() > 0 ? Cart::count() : 0 }}</p>
                        <p>${{ Cart::subtotal() }}</p>
                    </div>
                    <div class="zip">
                        <p>Zip Code</p>
                        <input placeholder="Enter your code" />
                        <button class="apply">Apply Code</button>
                    </div>
                    <div class="coupon">
                        <p>Coupon Code<small style="color: #999;"> (if you have one, Enter it please)</small></p>
                        <input placeholder="Enter your Coupon Code" />
                        <button class="apply">Apply Code</button>
                    </div>
                    <div class="i">
                        <p>Tax</p>
                        <p>${{ Cart::tax() }}</p>
                    </div>
                    <div class="i">
                        <p style="width: 50%;">Shipping - Ground Shipping <small style="color: #999;">(Wenfee - UPS -
                                USPS)(58.00 lbs.)</small></p>
                        <p>$0.00</p>
                    </div>
                    <hr class="solid">
                    <div class="i">
                        <p>Estimated Total</p>
                        <p>${{ Cart::total() }}</p>
                    </div>
                    <a href="#checkout-modal" rel="modal:open" class="checkout">CHECKOUT</a>
                </div>
            </div>
        </div>

        <div id="checkout-modal" class="modal">
            <h2>Choose Your Pay Method</h2>
            <button onclick="location.href='{{ route('checkout') }}'" class="cash-btn">
                <img src="{{ asset('img/cash-payment.svg') }}">
                <div>
                    <span>Pay Cash On Delivery</span>
                    <b>Complete Checkout Form</b>
                </div>
                <img class="arrow" src="{{ asset('img/up-chevronw.svg') }}">
            </button>
            <button class="credit-btn">
                <img src="{{ asset('img/credit-card.svg') }}">
                <div>
                    <span>Pay Via Credit Card</span>
                    <b>Checkout On Americommerce</b>
                </div>
                <img class="arrow" src="{{ asset('img/up-chevronw.svg') }}">
            </button>
        </div>
    </div> -->


    <!--------------------------------------------------------------------------------->
<!--JQUERYUI_CORE--><link type="text/css" rel="stylesheet" href="https://wenfeeusa.americommerce.com///ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.min.css">
<!--FRONTEND_AUTOCOMPLETE_CSS--><link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//store/inc/style/jquery.ui.autocomplete.css">
<script type="text/javascript" async="" src="https://www.gstatic.com/recaptcha/releases/Eyd0Dt8h04h7r-D86uAD1JP-/recaptcha__en.js" crossorigin="anonymous" integrity="sha384-Cm1nQr6Xj7E/8hYK0ZQgt50B1y7qtncPBm9tQGQV453cb5N/2ou4jkkZbzQejCpR"></script><script type="text/javascript" src="https://wenfeeusa.americommerce.com///ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">!function(n){n.fn.on||(n.fn.on=function(n,e,t,u){var i=this,g=arguments.length;return g>3?i.delegate(e,n,t,u):g>2?"string"==typeof e?i.delegate(e,n,t):i.bind(n,e,t):i.bind(n,e)},n.fn.off=function(n,e,t){var u=this,i=arguments.length;return"string"==typeof e?i>2?u.undelegate(e,n,t):i>1?u.undelegate(e,n):u.undelegate():i>1?(t=e,u.unbind(n,t)):i>0?u.unbind(n):u.unbind()})}(this.jQuery);</script>
<script type="text/javascript" src="https://wenfeeusa.americommerce.com//store/inc/ac.resizehelper.js"></script>
<script type="text/javascript">var hasShippableItems = true, requiresShippingSelection = true;</script>
<script type="text/javascript" src="https://wenfeeusa.americommerce.com//store/OnePageCheckout.js?v=4"></script>
<link rel="stylesheet" href="https://wenfeeusa.americommerce.com//store/inc/style/spinner.css">
<script type="text/javascript" src="https://wenfeeusa.americommerce.com//store/inc/imask/imask.min.js"></script>
<script type="text/javascript">$(function () { var controller = new CheckoutAddressController('UpdatePanelAddressArea', 'UpdatePanelShippingAddressArea', 'UpdatePanelShippingArea', 'addrBilling_ddStateID', 'addrBilling_txtZipCode', 'addrBilling_txtCity', 'addrBilling_txtAddress1', 'addrBilling_txtEmailAddress', 'addrBilling_ddCountryID', 'rblSameAsBillingAddress', 'addrShipping_ddStateID', 'addrShipping_txtZipCode', 'addrShipping_txtCity', 'addrShipping_txtAddress1', 'addrShipping_ddCountryID', 'txtCustomerEmail', 'addrShipping_txtEmailAddress', 'True', 'txtCustomerConfirmEmail', 'addrBilling_txtConfirmEmailAddress', 'addrShipping_txtConfirmEmailAddress'); controller.init(); });</script>
<script type="text/javascript">var addressStrings = {
	required: "required", minLength: "minimum length: ##MINLENGTH##", zipMisMatch: "Zip Code does not match State", emailInvalid: "email address is invalid", emailMisMatch: "email address must match" }</script>
<script type="text/javascript" src="https://wenfeeusa.americommerce.com//store/admin/controls/AddressEditor.js"></script>
<script type="text/javascript">window.addressControllers = window.addressControllers || {}; $(function () { var controller = new AddressController("UpdatePanelAddressArea", "btnPlaceOrder"); controller.init(); window.addressControllers["Billing"] = controller; });</script>
<script type="text/javascript">window.addressControllers = window.addressControllers || {}; $(function () { var controller = new AddressController("UpdatePanelShippingAddressArea", "btnPlaceOrder"); controller.init(); window.addressControllers["Shipping"] = controller; });</script>
<script type="text/javascript" src="https://wenfeeusa.americommerce.com///ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<![endif]-->
    <!-- Head Tags -->
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

<!-- Open Graph data -->
<meta property="og:title" content="Wenfee">
<meta property="og:type" content="Ecommerce Site">
<meta property="og:url" content="wenfeeusa.americommerce.com">
<meta property="og:site_name" content="Wenfee">

<!-- Twitter Card data [Requires site handlename to work] -->
<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@publisher_handle">
<meta name="twitter:title" content="Wenfee">
<meta name="twitter:creator" content="@author_handle">


<!-- Pre Bootstrap -->
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/root.css?v=132722889693944030">

<!-- Sweet Alert -->
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/SweetAlert.css?v=132722889694881621">

<!-- Bootstrap -->
<script src="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/bootstrap.min.css?v=132722889692693858">

<!-- Global Styles -->

<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/variables.css?v=132722889695037886">
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/bootstrap-override.css?v=132722889691741079">
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/base.css?v=132722889691428566">
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/style.css?v=132722889694725301">
<link rel="stylesheet" type="text/css" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/css/response.css?v=132722889693631493">

<!-- Favicon -->

  <link rel="shortcut icon" href="/images/favicon.ico">


<!-- Icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">

<!-- Fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link href="//fonts.googleapis.com/css?family=Montserrat:wght@300;400;500|Syncopate&amp;display=swap" rel="stylesheet">


<!-- SCRIPTS -->
<!-- Polyfills -->
<script src="https://polyfill.io/v3/polyfill.min.js?version=3.52.1&amp;features=es5%2Cfetch%2CString.prototype.startsWith%2CElement.prototype.classList%2Csmoothscroll%2CElement.prototype.closest%2CPromise%2Element.prototype.matches"></script>
<script src="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/js/themepre.js"></script>
<script src="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/js/updater.js"></script>
<script src="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/js/Spinner.js"></script>

<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/Spinner.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/SweetAlert.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/bootstrap.bundle.min.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/checkout.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/header.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/stickyHead.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/theme.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/themepre.js"></script>
<script src="https://wenfeeusa.americommerce.com/Shared/Themes/Foundation1/js/updater.js"></script>







  




<script>
  // Add settings to theme script
  const themeSettings = {
    fileLabel: "<label for='$FILEID$' class='custom-file-upload'><i class='fas fa-cloud-upload-alt'></i> File Upload <span class='file-name'></span></label>",
    calendarIcon: '<i class="fas fa-calendar position-absolute centerx-absolute"></i>',
    enableCustomFileButton: "True".toLowerCase() == "true",
    enableSpinner: "True".toLowerCase() == "true",
    enableCustomCalendarIcon: "True".toLowerCase() == "true",
    enableSmallSpinner: "True".toLowerCase() == "true",
    enableScrollToTop: "True".toLowerCase() == "true",
  };

  // Global Variables
  var dontEscape = false; // Allow modal iframes if window is in an iframe
  var additionalEvents = [];
  const breakPoints = { // Breakpoints for device width specific javacript code
    small: 360,
    mobile: 480,
    tablet: 768,
    desktop: 1023,
    large: 1920,
    wide: 2560 
  }
</script>
 
  <style> .ui-datepicker-trigger { opacity: 0; } </style> 

    <link rel="stylesheet" href="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/Templates/ContentOnly.css" type="text/css">
    
    <!-- END Head Tags -->
  <script>
var AC = AC || {}; 
AC.storeDomain = 'wenfeeusa.americommerce.com'; 
AC.sslDomain = 'wenfeeusa.americommerce.com';
</script>
<!--[if IE]>
                           <script type='text/javascript'>
                           if(typeof(console) === 'undefined') {
                            var console = {};
                            console.log = console.error = console.info = console.debug = console.warn = console.trace = console.dir = console.dirxml = console.group = console.groupEnd = console.time = console.timeEnd = console.assert = console.profile = function() {};
                            }</script>
                           <![endif]-->	<base target="_self">
<style type="text/css">
button.btn[data-v-20e3b604]{display:inline-block;font-weight:300;line-height:1.25;text-align:center;white-space:nowrap;vertical-align:middle;user-select:none;border:1px solid transparent;cursor:pointer;letter-spacing:1px;transition:all .15s ease
}
button.btn.btn-sm[data-v-20e3b604]{padding:.4rem .8rem;font-size:.8rem;border-radius:.2rem
}
button.btn.btn-primary[data-v-20e3b604]{color:#fff;background-color:#45C8F1;border-color:#45C8F1
}
button.btn.btn-outline-primary[data-v-20e3b604]{color:#45C8F1;background-color:transparent;border-color:#45C8F1
}
button.btn.btn-danger[data-v-20e3b604]{color:#fff;background-color:#FF4949;border-color:#FF4949
}
.text-muted[data-v-20e3b604]{color:#8492A6
}
.text-center[data-v-20e3b604]{text-align:center
}
.drop-down-enter[data-v-20e3b604],.drop-down-leave-to[data-v-20e3b604]{transform:translateX(0) translateY(-20px);transition-timing-function:cubic-bezier(0.74, 0.04, 0.26, 1.05);opacity:0
}
.drop-down-enter-active[data-v-20e3b604],.drop-down-leave-active[data-v-20e3b604]{transition:all .15s
}
.move-left-enter[data-v-20e3b604],.move-left-leave-to[data-v-20e3b604]{transform:translateY(0) translateX(-80px);transition-timing-function:cubic-bezier(0.74, 0.04, 0.26, 1.05);opacity:0
}
.move-left-enter-active[data-v-20e3b604],.move-left-leave-active[data-v-20e3b604]{transition:all .15s
}
.no-tr[data-v-20e3b604]{transition:none !important
}
.no-tr *[data-v-20e3b604]{transition:none !important
}
.overlay[data-v-20e3b604]{position:fixed;background:rgba(220,220,220,0.8);display:flex;align-items:center;justify-content:center;top:0;left:0;right:0;bottom:0;transition:all 0.2s ease;opacity:0;visibility:hidden
}
.overlay .modal[data-v-20e3b604]{transition:all 0.2s ease;opacity:0;transform:scale(0.6);overflow:hidden
}
.overlay.show[data-v-20e3b604]{opacity:1;visibility:visible
}
.overlay.show .modal[data-v-20e3b604]{opacity:1;transform:scale(1)
}
.panel[data-v-20e3b604]{padding:6px 10px;display:flex;width:100%;box-sizing:border-box;align-items:center;border-radius:4px;position:relative;border:1px solid #eaf7ff;background:#f7fcff;outline:none;transition:all 0.07s ease-in-out
}
.btn[data-v-20e3b604]{cursor:pointer;box-sizing:border-box
}
.light-btn[data-v-20e3b604]{padding:6px 10px;display:flex;width:100%;box-sizing:border-box;align-items:center;border-radius:4px;position:relative;border:1px solid #eaf7ff;background:#f7fcff;outline:none;cursor:pointer;transition:all 0.07s ease-in-out
}
.light-btn[data-v-20e3b604]:hover{background:#e0f4ff;border-color:#8acfff
}
.shake[data-v-20e3b604]{animation:shake-data-v-20e3b604 0.82s cubic-bezier(0.36, 0.07, 0.19, 0.97) both;transform:translate3d(0, 0, 0)
}
@keyframes shake-data-v-20e3b604{
10%,90%{transform:translate3d(-1px, 0, 0)
}
20%,80%{transform:translate3d(2px, 0, 0)
}
30%,50%,70%{transform:translate3d(-4px, 0, 0)
}
40%,60%{transform:translate3d(4px, 0, 0)
}
}
.pulse[data-v-20e3b604]{animation:pulse-data-v-20e3b604 2s ease infinite
}
@keyframes pulse-data-v-20e3b604{
0%{opacity:.7
}
50%{opacity:.4
}
100%{opacity:.7
}
}
.flash-once[data-v-20e3b604]{animation:flash-once 3.5s ease 1
}
@keyframes fade-up-data-v-20e3b604{
0%{transform:translate3d(0, 10px, 0);opacity:0
}
100%{transform:translate3d(0, 0, 0);opacity:1
}
}
.fade-in[data-v-20e3b604]{animation:fade-in-data-v-20e3b604 .3s ease-in-out
}
@keyframes fade-in-data-v-20e3b604{
0%{opacity:0
}
100%{opacity:1
}
}
.spin[data-v-20e3b604]{animation-name:spin-data-v-20e3b604;animation-duration:2000ms;animation-iteration-count:infinite;animation-timing-function:linear
}
@keyframes spin-data-v-20e3b604{
from{transform:rotate(0deg)
}
to{transform:rotate(360deg)
}
}
.bounceIn[data-v-20e3b604]{animation-name:bounceIn-data-v-20e3b604;transform-origin:center bottom;animation-duration:1s;animation-fill-mode:both;animation-iteration-count:1
}
@keyframes bounceIn-data-v-20e3b604{
0%,20%,40%,60%,80%,100%{-webkit-transition-timing-function:cubic-bezier(0.215, 0.61, 0.355, 1);transition-timing-function:cubic-bezier(0.215, 0.61, 0.355, 1)
}
0%{opacity:1;-webkit-transform:scale3d(0.8, 0.8, 0.8);transform:scale3d(0.8, 0.8, 0.8)
}
20%{-webkit-transform:scale3d(1.1, 1.1, 1.1);transform:scale3d(1.1, 1.1, 1.1)
}
40%{-webkit-transform:scale3d(0.9, 0.9, 0.9);transform:scale3d(0.9, 0.9, 0.9)
}
60%{opacity:1;-webkit-transform:scale3d(1.03, 1.03, 1.03);transform:scale3d(1.03, 1.03, 1.03)
}
80%{-webkit-transform:scale3d(0.97, 0.97, 0.97);transform:scale3d(0.97, 0.97, 0.97)
}
100%{opacity:1;-webkit-transform:scale3d(1, 1, 1);transform:scale3d(1, 1, 1)
}
}
@keyframes dots-data-v-20e3b604{
0%,20%{color:rgba(0,0,0,0);text-shadow:0.25em 0 0 rgba(0,0,0,0),0.5em 0 0 rgba(0,0,0,0)
}
40%{color:#8492A6;text-shadow:0.25em 0 0 rgba(0,0,0,0),0.5em 0 0 rgba(0,0,0,0)
}
60%{text-shadow:0.25em 0 0 #8492A6,0.5em 0 0 rgba(0,0,0,0)
}
80%,100%{text-shadow:.25em 0 0 #8492A6, .5em 0 0 #8492A6
}
}
@keyframes recording-data-v-20e3b604{
0%{box-shadow:0px 0px 5px 0px rgba(173,0,0,0.3)
}
65%{box-shadow:0px 0px 5px 5px rgba(173,0,0,0.3)
}
90%{box-shadow:0px 0px 5px 5px rgba(173,0,0,0)
}
}
body[data-v-20e3b604]{margin:0;font-size:100%;color:#3C4858
}
a[data-v-20e3b604]{text-decoration:none;color:#45C8F1
}
h1[data-v-20e3b604],h2[data-v-20e3b604],h3[data-v-20e3b604],h4[data-v-20e3b604]{margin-top:0
}
svg[data-v-20e3b604]{outline:none
}
.container_selected_area[data-v-20e3b604]{display:none;visibility:hidden;padding:0;position:fixed;top:0;left:0;right:0;bottom:0;z-index:2147483647
}
.container_selected_area.active[data-v-20e3b604]{visibility:visible;display:block
}
.container_selected_area .label[data-v-20e3b604]{font-family:"Didact Gothic Regular",sans-serif;font-size:22px;text-align:center;padding-top:15px
}
.container_selected_area .area[data-v-20e3b604]{display:none;position:fixed;z-index:2147483647;border:1px solid #1e83ff;background:rgba(30,131,255,0.1);box-sizing:border-box
}
.container_selected_area .area.active[data-v-20e3b604]{display:block;top:0;left:0
}
.hide[data-v-20e3b604]{display:none
}
</style><script type="text/javascript" src="https://wenfeeusa.americommerce.com/chrome-extension://aggiiclaiamajehmlfpkjmlbadmkledi/popup.js" async=""></script><script type="text/javascript" src="chrome-extension://aggiiclaiamajehmlfpkjmlbadmkledi/tat_popup.js" async=""></script></head>
<body class="OneColumn OnePageCheckOut" itemtype="http://schema.org/WebPage" itemscope="">
<form method="post" action="/store/OnePageCheckout.aspx" id="MainForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" data-lpignore="true">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" data-lpignore="true">
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" data-lpignore="true">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" data-lpignore="true">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['MainForm'];
if (!theForm) {
    theForm = document.MainForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="https://wenfeeusa.americommerce.com//WebResource.axd?d=pynGkmcFUV13He1Qd6_TZCxnARF_xyVCC7WrF1DkLdY72I1hLKyCOsqZt0qZQFnHSXNdrowuWjsUj6JVTxMT3A2&amp;t=637453852754849868" type="text/javascript"></script>


<script src="https://wenfeeusa.americommerce.com//ScriptResource.axd?d=uHIkleVeDJf4xS50Krz-yNzUCdMDaudP9lrY2mN9mIgrATDkw6HoME-OLdEG17rn5UQ7Mmc2cL1L7BUcrxk38gr5-89dZZA329bkiUNTGrLe_DTLuZ4gZhYGm3oYGAtiScBIgbPpMGJ9dFPwy4PfbZa-OLfjumTCey8hXCwVmFU1&amp;t=363be08" type="text/javascript"></script>
<script src="https://wenfeeusa.americommerce.com//ScriptResource.axd?d=Jw6tUGWnA15YEa3ai3FadOYfXEIkjrLkekSOT916teKBTmBe5PPHvYqcT2QZR1jbKm99sQBiI2LZqQCpnAbLjalu-0S5TvgFNGHTSN2o5RYhZPJPQyvbmRquDBGXeW0BQOv9aQ3lYVAY4YY2ynFVqHi5U69TUST9hcGA7OJLa_41&amp;t=363be08" type="text/javascript"></script>
  
      <!-- Content -->
      <section class="LayoutMiddle container">
        <div class="row">
          <section class="LayoutContent col-sm-12">
            <div class="LayoutContentInner">
              <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', 'MainForm', ['fUpdatePanelErrorArea','','fUpdatePanelAddressArea','','fUpdatePanelShippingAddressArea','','tUpdatePanelShippingArea','','fUpdatePanelPaymentArea','','tUpdatePanelGiftArea','','tUpdatePanelCartArea',''], ['addrShipping','','btnPayWithAmazonAddressSelected','btnPayWithAmazonAddressSelected','rblSameAsBillingAddress','','ucShippingMethod','','lbtnRecalcShipping','','ucPaymentMethodSelection',''], [], 90, '');
//]]>
</script>

<script type="text/javascript">
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_initializeRequest(InitializeRequest);
    prm.add_endRequest(EndRequest);
    var postBackElement;

    function InitializeRequest(sender, args) {
        if (prm.get_isInAsyncPostBack()) {
            //this is to solve a problem where in IE9, if they click the ship to different address option at the same time as the shipping rate ajax triggers, it wouldn't display the shipping address fields
            if (args._postBackElement != null && args._postBackElement.id != null && args._postBackElement.id.indexOf("rblSameAsBillingAddress") == -1)
                args.set_cancel(true);
        }

        postBackElement = args._postBackElement;
        
        $("input[id$='btnPlaceOrder']").attr("disabled", "disabled");   
    }
    function EndRequest(sender, args) {
        $("input[id$='btnPlaceOrder']").removeAttr("disabled");

        //Theme specific JS can set to ignore validation errors. This is to support Foundation Theme's multi-step checkout behavior
        let ignoreErrors = false;
        if (typeof ignoreAddressValidationErrors === 'boolean')
            ignoreErrors = ignoreAddressValidationErrors;

        var trigger;
        if (postBackElement) {
            trigger = postBackElement.id;
        }
        if (window.addressControllers && trigger !== "addrBilling_txtEmailAddress" && trigger !== "addrShipping_txtEmailAddress") {
            var billing = window.addressControllers.Billing;
            var shipping = window.addressControllers.Shipping;

            if (billing) {
                billing.validateAll(ignoreErrors);
            }

            if (shipping && $('#hfRequestShippingFirst').val() === "True" || (($("#rblSameAsBillingAddress").find("input:checked").val() === "0")
                && (!trigger || trigger.indexOf("rblSameAsBillingAddress") === -1))) {
                shipping.validateAll(ignoreErrors);
            }
        } 
        if (trigger == "addrBilling_txtEmailAddress" || trigger == "addrShipping_txtEmailAddress")
        {
            if (typeof emailAddressUpdated == "function") { 
                emailAddressUpdated();
            }
        }
        if ($("#ucPaymentMethodSelection_ddPaymentMethodSel option:selected").attr("paymenttype") == "PayPalCommerce") {
            var msg = $('#hdPayPalOrderToken').val();
            if (msg != "") {
                if (msg.startsWith("Error:")) {
                    $('#paypal-order-error').first().html(msg);
                    $('#paypal-order-error').show();
                    $('#paypal-button-container').hide()
                }
            } else {
                $('#paypal-order-error').first().text('');
                $('#paypal-order-error').hide();
                $('#paypal-button-container').first().text('');
                $('#paypal-button-container').show();
                RendPayPalSmartButtons();
            }
            $('#PayPalSmartButtonModal').modal('show');
        }

        setupTxtCCExpiration();
    }
    function showHideCreditCardPartialPaymentAmountArea() {
        $("#trCreditCardPartialPaymentArea").toggle();
    }
    function GuestCheckoutClick() {
        $('#chkGuestCheckout').attr('checked', 'checked');
        var labelRef = document.getElementById("lblErrorText");
        labelRef.innerHTML = '';
        labelRef.value = "";
        labelRef.style.display = "none";
        return false;
    	
    }
</script>

  <div class="OnePageCheckOut-checkoutArea checkout row m-0">
    <div class="checkout-wrap col-xl-7">
      <div class="errortext-wrap mb-2"> <div id="UpdatePanelErrorArea">
	
        <div align="center">
            
        </div>
    
</div> </div>
      <div class="checkout-totalsArea">
        <!-- Express Checkout -->
        
        <!-- END Express Checkout -->

        <!-- Mobile Log In Link -->
        
          <div class="d-md-none px-3 pb-2">
            <span class="text-muted"> Already have an account?</span> 
            <a href="/store/Login.aspx?r=%2fstore%2fOnePageCheckout.aspx%3fprogress%3dfalse" class="text-nowrap">Log in</a>
          </div>
        
        <!-- END Mobile Log In Link -->
        <div class="checkout-container card-body bg-accent">
        <div id="Buttons">
        <button id="Continue_Buttons">Continue Shopping </button>
        <button id="Cancel_Button">cancel</button>
        </div>
        <style>
        #Buttons
        {
          display: flex;
          justify-content: space-between;
        }
        #Cancel_Button
        {
          background: #ba0000;
          border-radius: 5px;
          padding: 12px;
          color: #fff;
          margin-bottom: 5px;
        }
        #Continue_Buttons
        {
          background: #007b70;
          border-radius: 5px;
          padding: 12px;
          color: #fff;
          margin-bottom: 5px;
        }
        </style>
          <!-- Account -->
          <div class="checkout-existingCustomer step-item active hide-notext-in" id="contact-container" notext=".step-body">
            <div class="checkout-existingCustomer-header step-header row row-cols-auto m-0 pt-2 col-12 align-items-center">
              <div class="title h3 col-auto fw-bold m-0 p-0">Contact Information</div>
              
                <div class="d-none d-md-block pe-0 text-end ms-auto align-self-center step-header-omit">
                  <span class="text-muted"> Already have an account?</span> 
                  <a href="/store/Login.aspx?r=%2fstore%2fOnePageCheckout.aspx%3fprogress%3dfalse" class="text-nowrap">Log in</a>
                </div>
              
            </div>
            <div class="step-body d-grid gap-3">
              <div class="checkout-existingCustomer-confirmEmail form-group mt-3 col-12 hide-empty">
                <span class="label">Email Address</span>
                <input name="txtCustomerEmail" type="text" id="txtCustomerEmail" class="CustomerEmailTextBox form-control validation-required validate-email" autocomplete="off" placeholder="Email" data-lpignore="true">
                <span id="lblCustomerEmailError" class="ErrorText alert alert-danger" style="display:none">Email Address is invalid.</span>
              </div>
              

              <!-- Customer Custom Fields -->
              
              <!-- END Customer Custom Fields -->
              <div class="d-none"><input id="chkGuestCheckout" type="checkbox" name="chkGuestCheckout" checked="checked" data-lpignore="true"><label for="chkGuestCheckout">Check out as a Guest</label></div>
              <div class="checkout-contact-actions row justify-content-between col-12">
                <div class="mailingListAnchor"><div class="checkout-mailing pb-3" ranchanges="true">
                
              </div></div>
              </div>
            </div>
          </div>
          <!-- END Account -->

          <!-- Shipping -->
          <div class="checkout-shipping step-item m-0 hide-notext" id="shipping-container">
            <!-- Address Area -->
            <div id="UpdatePanelShippingAddressArea">
	
                                
              
              <div id="ShippingAddressArea">
                <div class="checkout-shipping">
                  <div class="checkout-shipping-header step-header row row-cols-auto m-0 col-12 pt-2 align-items-start">
                    <div class="title col-md-auto h3 fw-bold p-0 m-0">
                      Shipping Information
                    </div>
                  </div>
                  <div class="step-body">
                    <div id="dvAddrShipping">
                      <div class="checkout-shipping-body checkoutShipping d-grid gap-3 mt-3 pt-1">
                        

                        
                          

                          <div class="checkoutShipping-name row">
                            <div class="checkoutShipping-firstName col-sm-6"> 
                              <label>First Name</label>
                              <input name="addrShipping$txtFirstName" type="text" id="addrShipping_txtFirstName" class="AddressEditorEmailTextbox validation-required form-control" data-lpignore="true">
                              <span id="addrShipping_lblFirstName" class="ErrorText alert alert-danger" style="display:none;"></span>
                            </div>
                            <div class="checkoutShipping-lastName col-sm-6 mb-0">                      
                              <label>Last Name</label>
                              <input name="addrShipping$txtLastName" type="text" id="addrShipping_txtLastName" class="AddressEditorEmailTextbox validation-required form-control" data-lpignore="true">
                              <span id="addrShipping_lblLastName" class="ErrorText alert alert-danger" style="display:none;"></span>
                            </div>
                          </div>

                          
                            <div class="checkoutShipping-company row">
                              <div class="col-12">
                                <label><span id="addrShipping_lblCompany">Company</span></label>
                                <span class="optional">(optional)</span>
                                <input name="addrShipping$txtCompany" type="text" maxlength="255" id="addrShipping_txtCompany" class="AddressEditorEmailTextbox form-control" data-lpignore="true">
                              </div>
                            </div>
                          

                          <div class="checkoutShipping-country col-12 p-0">

                          </div>

                          <div class="checkoutShipping-geolocal row col-12 m-0 p-0">
                            <div class="checkoutShipping-state-wrap col-xl-4 col-12 px-0 pe-xl-2">
                              

                              
                                <div class="checkoutShipping-state">
                                  <label><span id="addrShipping_lblStateLabel">State</span></label>
                                  <select name="addrShipping$ddStateID" id="addrShipping_ddStateID" class="AddressEditorEmailTextbox validation-required form-control">
	<option selected="selected" value="-999">-select-</option>
	<option value="3">Alabama</option>
	<option value="1">Alaska</option>
	<option value="4">Arizona</option>
	<option value="2">Arkansas</option>
	<option value="5">California</option>
	<option value="6">Colorado</option>
	<option value="7">Connecticut</option>
	<option value="8">Delaware</option>
	<option value="9">Florida</option>
	<option value="10">Georgia</option>
	<option value="11">Hawaii</option>
	<option value="13">Idaho</option>
	<option value="15">Illinois</option>
	<option value="14">Indiana</option>
	<option value="12">Iowa</option>
	<option value="16">Kansas</option>
	<option value="17">Kentucky</option>
	<option value="18">Louisiana</option>
	<option value="26">Maine</option>
	<option value="19">Maryland</option>
	<option value="25">Massachusetts</option>
	<option value="24">Michigan</option>
	<option value="20">Minnesota</option>
	<option value="23">Mississippi</option>
	<option value="21">Missouri</option>
	<option value="22">Montana</option>
	<option value="27">Nebraska</option>
	<option value="28">Nevada</option>
	<option value="29">New Hampshire</option>
	<option value="33">New Jersey</option>
	<option value="30">New Mexico</option>
	<option value="34">New York</option>
	<option value="31">North Carolina</option>
	<option value="32">North Dakota</option>
	<option value="36">Ohio</option>
	<option value="35">Oklahoma</option>
	<option value="37">Oregon</option>
	<option value="38">Pennsylvania</option>
	<option value="39">Rhode Island</option>
	<option value="40">South Carolina</option>
	<option value="41">South Dakota</option>
	<option value="42">Tennessee</option>
	<option value="43">Texas</option>
	<option value="44">Utah</option>
	<option value="46">Vermont</option>
	<option value="45">Virginia</option>
	<option value="47">Washington</option>
	<option value="51">Washington DC</option>
	<option value="49">West Virginia</option>
	<option value="48">Wisconsin</option>
	<option value="50">Wyoming</option>
	<option value="67">AA</option>
	<option value="68">AE</option>
	<option value="69">AP</option>

</select>
                                  <span id="addrShipping_lblState" class="ErrorText alert alert-danger" style="display:none;"></span>
                                </div>
                              
                            </div>

                            <div class="checkoutShipping-city col-xl-4 col-12 p-0 pe-xl-2">
                              <label><span id="addrShipping_lblCityLabel">City</span></label>
                              <input name="addrShipping$txtCity" type="text" maxlength="60" id="addrShipping_txtCity" class="AddressEditorEmailTextbox validation-required form-control" data-minlength="2" data-lpignore="true">
                              <span id="addrShipping_lblCity" class="ErrorText alert alert-danger" style="display:none;"></span>
                            </div>

                            <div class="checkoutShipping-code col-xl-4 p-0 m-0">
                              <div class="checkoutShipping-zip d-table-cell">
                                <label><span id="addrShipping_lblPostalCode">Zip/Postal Code</span></label>
                                <input name="addrShipping$txtZipCode" type="text" maxlength="30" id="addrShipping_txtZipCode" class="AddressEditorZipCodeTextbox validation-required form-control" data-minlength="5" data-lpignore="true">
                                <span id="addrShipping_lblZipCode" class="ErrorText alert alert-danger" style="display:none;"><div class="errorText">Please enter your zip/postal code.</div></span>
                              </div>
                              <div class="checkoutShipping-plus4 d-table-cell">
                                <label class="ms-1">+4</label>
                                
                                
                              </div>
                            </div>
                          </div>

                          <div class="checkoutShipping-address1 col-12 p-0">
                            <label><span id="addrShipping_lblAddressLine1">Address Line 1</span></label>
                            <input name="addrShipping$txtAddress1" type="text" maxlength="50" id="addrShipping_txtAddress1" class="AddressEditorEmailTextbox validation-required form-control" data-minlength="5" data-lpignore="true">
                            <span id="addrShipping_lblAddress1" class="ErrorText alert alert-danger" style="display:none;"></span>
                          </div>

                          <div class="checkoutShipping-address2 col-12 p-0">
                            <label><span id="addrShipping_lblAddressLine2">Apartment, suite, etc</span></label>
                            <span class="optional">(optional)</span>
                            <input name="addrShipping$txtAddress2" type="text" maxlength="50" id="addrShipping_txtAddress2" class="AddressEditorEmailTextbox form-control" data-lpignore="true">
                          </div>


                          <div class="checkoutShipping-phone col-12"> 
                            <label><span id="addrShipping_lblPhoneNumber">Phone Number</span></label>
                            <input name="addrShipping$txtPhoneNumber" type="text" maxlength="50" id="addrShipping_txtPhoneNumber" class="AddressEditorPhoneTextbox validation-required form-control" data-minlength="10" data-lpignore="true">
                            <span id="addrShipping_lblPhone" class="ErrorText alert alert-danger" style="display:none;"></span>
                          </div>

                          

                          

                          
                            <div class="checkoutShipping-email col-12 d-none">
                              <label>Email</label>
                              <input name="addrShipping$txtEmailAddress" type="text" maxlength="255" id="addrShipping_txtEmailAddress" class="AddressEditorEmailTextbox validation-required validate-email form-control" data-lpignore="true">
                              <span id="addrShipping_lblEmailAddress" class="ErrorText alert alert-danger" style="display:none;"></span>
                            </div>
                          

                          

                          <div class="checkoutShipping-addressNote col-12">
                            <label><span id="addrShipping_lblAddressNotes">Address Notes</span></label>
                            <span class="optional">(optional)</span>
                            <textarea name="addrShipping$txtComments" rows="2" cols="20" maxlength="255" id="addrShipping_txtComments" class="AddressEditorEmailTextbox form-control"></textarea>
                          </div>

                          <div class="checkoutShipping-nickname col-12">
                            <label><span id="addrShipping_lblAddressNickName">Address NickName</span></label>
                            <span class="optional">(optional)</span>
                            <input name="addrShipping$txtNickName" type="text" maxlength="20" id="addrShipping_txtNickName" class="AddressEditorEmailTextbox form-control" data-lpignore="true">
                          </div>

                          <div class="checkoutShipping-custom d-grid gap-3 col-12 row m-0 p-0">
                            <span id="addrShipping_ctlCustomFields_lblValidationErrors" style="color:Red;"></span>
                          </div>
                          <span class="checkoutShipping-error"></span>
                          <hr>

                        
                      </div>
                    </div>
                    <div class="shipping-content">
                      
                    </div>
                  </div>
                </div>
              </div>
            
                            
</div>
            <!-- END Address Area -->

            <div class="step-body">
              <!-- Shipping Custom Fields -->
              
              <!-- END Shipping Custom Fields -->

              <!-- Public Order Comments Area -->
              <div class="checkout-commentsWrap col-auto">
                <div id="PublicOrderCommentsArea" class="PublicCommentsArea" style="width:50%;float:left;" visible="">
                  <div class="mb-2 mt-2">
                    <div class="checkout-comments">
                      <div class="checkout-comments-header row m-0">
                        <div class="h4 fw-bold mb-0 p-0">
                          Order Comments
                        </div>
                      </div>
                      <div class="checkout-comments-body checkoutComments">
                        <div class="checkoutComments-order">
                          <label>Comments</label>
                          <textarea name="txtPublicComments" rows="2" cols="20" id="txtPublicComments" class="PublicComments form-control"></textarea>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- END Public Order Comments Area -->
              <!-- Shipping Method Area -->
              <div id="UpdatePanelShippingArea">
	
                        <input type="submit" name="btnPayWithAmazonAddressSelected" value="" id="btnPayWithAmazonAddressSelected" style="display:none;">
                        <input type="hidden" name="hfOrderReferenceId" id="hfOrderReferenceId" data-lpignore="true">
                        <input type="hidden" name="hfRequestShippingFirst" id="hfRequestShippingFirst" value="False" data-lpignore="true">
                        
                <div id="ShippingMethodArea" class="ShippingMethodArea">
                  <div class="checkout-shippingMethod shipping-content mb-2 mt-2 col-auto">
                    <div class="checkout-shippingMethod-header">
                      <div class="h4 fw-bold">
                        Shipping Method
                      </div>
                    </div>
                    <div class="checkout-shippingMethod-body checkoutShippingMethod">
                      <div id="ShippingDropDownArea" class="ShippingDropDownArea">
                        <div class="checkoutShippingMethod-wrap ShippingDropDownArea">
                          <div id="UpdateProgress1" style="display:none;" role="status" aria-hidden="true">
	
										    <div class="ShippingRatesText">
	 Retrieving Shipping Rates... <br>
	 <img src="images/spinner.gif" alt="Loading...">
</div><br>
									    
</div>
                          <div class="checkoutShippingMethod-methods">
                            
<div>		
	
	
    
	
	<div id="ucShippingMethod_dvShippingMethod">
	    
                        <!-- Shipping Section -->

                <div id="dvShippingClassificationCodePickerArea">

                  <p></p>
                  <input type="radio" name="tab" value="Shipping" onclick="show1();" />
                  <label>One</label>
                  <br>
                  <br>
                  <input type="radio" name="tab" value="Shipping" onclick="show1();" />
                  <label>Two</label>
                  <br>
                  <br>
                  <input type="radio" name="tab" value="Shipping" onclick="show1();" />
                  <label>Ground Shipping (Wenfee UPSUSPS) - $15.99USPS)</label>
                  <br>
                  <br>
                  <input type="radio" name="tab" value="pickup" onclick="show2();" />
                  <label>pick up For Free</label>
                  <div id="div1" class="hidden">
                  <label for="start" style="margin-top: 7px;"><span id="Date_span">date:</span></label>
                  <input type="date" id="Date">
                  <br>
                  <br>
                  <label id="Radio_Div"><span>Hello Ali :</span></label>
                  <br>
                  <input type="radio" name="Location"> location1
                  <br>
                  <br>
                  <input type="radio" name="Location"> location2
                  <br>
                  <br>
                  <input type="radio" name="Location"> location3

                  



                  </div>
                    
                </div>
                <style>
                #Date
                {
                  float: right;
                  border-radius: 5px;
                  border: 1px solid #DDF;
                  padding: 5px;
                }
                #div1
                {
                  margin: 10px 0px;
                  padding: 20px;
                  background: #eee;
                  border-radius: 5px;
                  font-size : 18px ;
                }
                .hidden
                {
                  display : none ;
                }
                </style>
                <script>
                        function show1(){
                              document.getElementById('div1').style.display ='none';
                            }
                            function show2(){
                              document.getElementById('div1').style.display = 'block';
                            }
                        
                        </script>
	    

		<br> Shipping costs are estimated.<br><br>
		
		
	</div>
</div>


                          </div>

                          <span id="lblShippingMessage"></span>
                                          
                          <div class="checkoutShippingMethod-additional mt-2 pt-1">
                            <a id="lbtnRecalcShipping" href="javascript:__doPostBack('lbtnRecalcShipping','')">Refresh Shipping Options and Amounts</a>
                            
                          </div>
                        </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
              
					
</div>
              <!-- END Shipping Method Area -->
            </div>
          </div>
          <!-- END Shipping -->


          <!-- Billing Custom Fields -->
          
          <!-- END Billing Custom Fields -->

          <!-- Order Custom Fields -->
          
          <!-- Customer Custom Fields -->

          <!-- Payment Methods -->
          <div class="checkout-payment-wrap step-item" id="payment-container">
            <div id="PaymentMethodArea" class="PaymentMethodArea">
              <div class="checkout-payment ">
                <div class="checkout-payment-header step-header step-header-nomin row m-0 pt-2 col-auto align-items-center">

                </div>
                <div class="step-body">
                  <div id="UpdatePanelPaymentArea">


                    <div class="h4 fw-bold col-12 my-2">
                      Payment Methods
                    </div>
                    <div class="checkout-payments list-group mb-3 p-0 col-12">
                      <!--[ac] this section will be hidden on the front end to allow for the expandable payment sections -->
                      <div class="checkout-payment payment-method-select d-none">
                        <div class="checkout-payment-header">
                          <div class="h4">
                            Payment Information
                          </div>
                        </div>
                        <div class="checkout-payment-body checkoutPayment">
                          
                            <div class="checkoutPayment-wrap row">
                              <div class="checkoutPayment-methods col-sm-6">
                                <label class="payment-select d-none">
                                  <span class="label">Payment Type:</span>
                                  <select name="ucPaymentMethodSelection$ddPaymentMethodSel" onchange="javascript:setTimeout('__doPostBack(\'ucPaymentMethodSelection$ddPaymentMethodSel\',\'\')', 0)" id="ucPaymentMethodSelection_ddPaymentMethodSel" class="form-control" ranchanges="true">
	<option value="-999" paymenttype="" paymenttypename="">-Select Payment Method-</option>
	<option selected="selected" value="127" paymenttype="Custom" paymenttypename="Cash payment">Cash payment</option>
	<option value="0" paymenttype="CreditCard" paymenttypename="Credit Card">Credit Card</option>
	<option value="113" paymenttype="Custom" paymenttypename="Pay with Check/Money Order">Pay with Check/Money Order</option>
	<option value="-4" paymenttype="RewardPoints" paymenttypename="RewardPoints">Reward Points</option>
	<option value="-3" paymenttype="GiftCertificate" paymenttypename="GiftCertificate">Gift Certificate</option>

</select>


                                </label>
                              </div>
                            </div>
                          
                        </div>
                      </div>

                      <!-- Credit Card Payment Method -->
                      
                      <!-- END Credit Card Payment Method -->

                      <!-- ECheck Payment Method -->
                      <div class="checkout-echeckWrap payment-method Echeck list-group-item list-group-item-action hide">
                        <div class="checkout-echeck">
                          <div data-payment-name="Echeck" class="checkout-echeck-header payment-name row m-0 align-items-center">
                            Echeck 
                          </div>
                          
                        </div>
                      </div>
                      <!-- END ECheck Payment Method -->

                      <!-- PayPalCommerce Payment Method -->
                      <div class="checkout-paypalCommerceWrap payment-method PayPalCommerce list-group-item list-group-item-action hide">
                        <div class="checkout-paypalCommerce">
                          <div data-payment-name="PayPalCommerce" class="checkout-paypalCommerce-header payment-name row m-0 align-items-center">
                            <img class="col-auto p-0" src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png">
                          </div>
                          <div class="checkout-paypalCommerce-body row">
                          </div>
                        </div>
                      </div>
                      <!-- END PayPalCommerce Payment Method -->

                      <!-- Apruve Payment Method -->
                      <div class="checkout-apruveWrap checkout payment-method Apruve list-group-item list-group-item-action hide">
                        <div class="checkout-apruve">
                          <div data-payment-name="Apruve" class="checkout-apruve-header payment-name row m-0 align-items-center">
                            <img class="col-auto p-0" src="https://wenfeeusa.americommerce.com//Shared/Themes/Foundation1/images/apruve.png" height="25">
                          </div>
                          
                        </div>
                      </div>
                      <!-- END Apruve Payment Method -->

                      <!-- AffirmCheckout Payment Method -->
                      <div class="checkout-affirmWrap payment-method AffirmCheckout list-group-item list-group-item-action hide">
                        <div class="checkout-affirm">
                          <div data-payment-name="AffirmCheckout" class="checkout-affirm-header payment-name row m-0 align-items-center">
                            <img class="col-auto p-0" height="25px" src="https://cdn-assets.affirm.com/images/blue_logo-transparent_bg.png"> 
                            <span class="affirm-desc col-auto p-0">&nbsp; Buy with Monthly Payments</span>
                          </div>
                          
                        </div>
                      </div>
                      <!-- END AffirmCheckout Payment Method -->

                      <!-- Coinbase Payment Method -->
                      <div class="checkout-coinbaseWrap payment-method Coinbase list-group-item list-group-item-action hide">
                        <div class="checkout-coinbase">
                          <div data-payment-name="Coinbase" class="checkout-coinbase-header payment-name row m-0 align-items-center">
                            <img class="col-auto p-0" height="20px" src="https://wenfeeusa.americommerce.com//store/images/coinbase.png"> 
                          </div>
                          
                        </div>
                      </div>
                      <!-- END CoinbasePayment Method -->
                      
                      <!-- GiftCard Payment Method -->
                      <div class="checkout-giftCardWrap payment-method GiftCard list-group-item list-group-item-action hide">
                        <div class="checkout-giftCard">
                          <div data-payment-name="GiftCard" class="checkout-giftCard-header payment-name row m-0 align-items-center">
                            Gift Card
                          </div>
                          
                        </div>
                      </div>
                      <!-- END GiftCard Payment Method -->

                      <!-- Custom Payments Payments -->


                      




                        <!----------------------------------------->

                                                      <ul class="tabs">
                                                      <!------- One ----------->

                                <li class="active" data-cont=".one">Credit Card</li>
                                <li data-cont=".two">Cash payment</li>
                                <li data-cont=".three">Pay with Check/Money Order</li>
                                <li data-cont=".Four"> Hello Ali </li>
                              </ul>
                              <div id="content">
                                <div class="one">
                                <div class="CreditCard-body d-grid gap-3 p-2" ranchanges="true">
                               
                              <!-- Tabs navs -->
                              <ul class="nav nav-tabs row m-0 border-0 d-none" role="tablist">
                                <li class="nav-item col-6 p-0" role="presentation">
                                  <button class="nav-link active mx-auto" data-bs-target=".single-card-content" data-bs-toggle="tab" type="button" role="tab">
                                    Single Card Payment
                                  </button>
                                  <hr>
                                </li>
                                <li class="nav-item col-6 p-0" role="presentation">
                                  <button class="nav-link  mx-auto" data-bs-target=".multiple-card-content" data-bs-toggle="tab" type="button" role="tab">
                                    Multiple Cards Payment
                                  </button>
                                  <hr>
                                </li>
                              </ul>
                              
                                
                                <div class="CreditCard-type row d-none">
                                  <div class="col-sm-3">
                                    <label>Card Type</label>
                                    <select name="CreditCardTypeDropDown1$ddCreditCardTypes" id="CreditCardTypeDropDown1_ddCreditCardTypes" class="form-control">
	<option selected="selected" value="3">Amex</option>
	<option value="4">Discover</option>
	<option value="2">MasterCard</option>
	<option value="1">Visa</option>

</select>
                                    
                                  </div>
                                </div>
                                
                                  <div class="CreditCard-number row">
                                    <div class="col-12">
                                      <label class="d-none">Card Number</label>
                                      <div id="CardNumber"><input name="txtCardNumber" type="text" id="txtCardNumber" class="CreditCardTextbox form-control" autocomplete="off" data-lpignore="true"><input type="hidden" name="hfccToken" id="hfccToken" data-lpignore="true"><input type="hidden" name="hfGenerateCCToken" id="hfGenerateCCToken" value="0" data-lpignore="true"></div>
                                      
                                    </div>
                                  </div>
                                
                                <div class="CreditCard-name row">
                                  <div class="col-12">
                                    <label class="d-none">Name on Card</label>
                                    <input name="txtNameOnCard" type="text" maxlength="50" id="txtNameOnCard" class="CreditCardTextbox form-control" data-lpignore="true" placeholder="Name on card">
                                    
                                  </div>
                                </div>
                                <div class="row d-grid gap-3 d-sm-flex gap-sm-0">
                                  <div class="CreditCard-expiration col-12 col-sm-6 position-relative">
                                    <div class="d-none checkoutCreditCard-expiration-label label">
                                      Expiration Date
                                    </div>
                                    
                                      <input name="txtCCExpiration" type="text" id="txtCCExpiration" class="form-control" data-lpignore="true" placeholder="Expiration Date (MM/YY)"> 
                                      <span style="padding:0;clear:left;"></span>
                                      
                                    
                                  </div>
                                  <div class="CreditCard-cvv row m-0 p-0 col-12 col-sm-6">
                                    <label class="d-none">CVV Number </label>
                                    <div class="position-relative">
                                      <div class="input-left-icon">
                                        <span class=""><a href="ExplainCVV.aspx" id="hlExplainCvv" target="_blank" class="ExplainCVVText" ranchanges="true"><i class="fas fa-info-circle explaincvv-icon"></i></a></span>
                                        
                                      </div>
                                      <input name="txtCVV" type="text" maxlength="4" id="txtCVV" class="form-control" autocomplete="off" data-lpignore="true" placeholder="CVV">
                                    </div>
                                    
                                  </div>
                                  <div class="CreditCard-saveCard col-12 mt-2"></div>
                                </div>
                              
                              <div class="tab-content">
                                <div class="tab-pane fade show active single-card-content" role="tabpanel">
                                  <div class="creditCard-fees align-self-center fw-bold mb-2">
                                    <span class="creditcard-fee-label d-none"><i class="fas fa-exclamation-circle"></i></span>
                                    <span class="creditCard-fee-anchor"></span>
                                  </div>
                                </div>
                                <div class="tab-pane fade multiple-card-content" role="tabpanel" ranchanges="true">                                 
                                </div>
                              </div>
                            </div>   
                                </div>
                                <!------- End of One ----------->

                                <!------- TWo ----------->
                                <div class="two">
                                You have selected "Cash payment"
                                </div>
                                
                                <!------- end of TWo ----------->





                                <!------- three ----------->

                                <div class="three">
                                <div class="checkoutCustomItem-body card-body">
              <div class="checkoutCustomItem-text CheckoutText mb-2">
                
              </div>
              <!--[ac] This section is populated by the OnePageCheckoutCustomPaymentMethodField layoutarea below -->
              

              <table id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields" cellspacing="0" border="0" style="border-collapse:collapse;">
	<tbody><tr>
		<td>
                                            
          <label class="checkoutCustomItem-field custom-field d-flex flex-wrap custom-form-control">
            <input name="CustomPaymentMethods1$rpCustomMethods$ctl01$dlCustomMethodFields$ctl00$txtField" type="text" id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields_ctl00_txtField" class="form-control" data-lpignore="true">
            <label class="custom-form-control"><span id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields_ctl00_lblFieldName" class="CheckOutText">Company Name</span></label>
          </label>
        
									        
									        
									        
									        
									        
									        
								        </td>
	</tr><tr>
		<td>
                                            
          <label class="checkoutCustomItem-field custom-field d-flex flex-wrap custom-form-control">
            <input name="CustomPaymentMethods1$rpCustomMethods$ctl01$dlCustomMethodFields$ctl01$txtField" type="text" id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields_ctl01_txtField" class="form-control" data-lpignore="true">
            <label class="custom-form-control"><span id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields_ctl01_lblFieldName" class="CheckOutText">First Name on Account</span></label>
          </label>
        
									        
									        
									        
									        
									        
									        
								        </td>
	</tr><tr>
		<td>
                                            
          <label class="checkoutCustomItem-field custom-field d-flex flex-wrap custom-form-control">
            <input name="CustomPaymentMethods1$rpCustomMethods$ctl01$dlCustomMethodFields$ctl02$txtField" type="text" id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields_ctl02_txtField" class="form-control" data-lpignore="true">
            <label class="custom-form-control"><span id="CustomPaymentMethods1_rpCustomMethods_ctl01_dlCustomMethodFields_ctl02_lblFieldName" class="CheckOutText">Last Name on Account</span></label>
          </label>
        
									        
									        
									        
									        
									        
									        
								        </td>
	</tr>
</tbody></table>
            </div>
                                
                                </div>
                                <div class="Four">Hello Ali</div>

                              </div>
                              <!------- End of three ----------->


                              <!--------------- Payemnt Script And Style ------------->
                              <style>
                              .tabs {
                                        display: flex;
                                        list-style: none;
                                        padding: 0;
                                        margin: 0;
                                      }
                                      .tabs li {
                                        padding: 10px;
                                        background-color: #fff;
                                        border-right: 1px solid white;
                                        cursor: pointer;
                                        transition: 0.2s;
                                        font-weight: bold;
                                         color: #007b70;
                                      }
                                      .tabs li.active,
                                      .tabs li:hover {
                                        background-color: #eee;
                                        border-radius: 5px;
                                      }
                                      #content {
                                        background-color: #eee;
                                        border-radius : 5px
                                      }
                                      #content > div {
                                        padding: 20px;
                                      }
                                      #content > div:not(:first-child) {
                                        display: none;
                                      }
                                      </style>
                                      

                                      <script>
                                      let tabs = document.querySelectorAll(".tabs li");
                                      let tabsArray = Array.from(tabs);
                                      let divs = document.querySelectorAll("#content > div");
                                      let divsArray = Array.from(divs);
                                      tabsArray.forEach((ele) => {
                                        ele.addEventListener("click", function (e) {
                                          tabsArray.forEach((ele) => {
                                            ele.classList.remove("active");
                                          });
                                          e.currentTarget.classList.add("active");
                                          divsArray.forEach((div) => {
                                            div.style.display = "none";
                                          });
                                          document.querySelector(e.currentTarget.dataset.cont).style.display = "block";
                                        });
                                      });
                                                                            
                                      </script>




                            <!--------------- Payemnt Script And Style ------------->




                        
                      <!-- END Custom Payments Payments -->

                      <!-- No Payment -->
                      <!--[ac] This section is shown if there is no payment due based on the order total being 0 or if payments have been applied that cover the entire balance -->
                      <div class="checkout-noPaymentWrap NoPaymentDue hide">
                        <div class="checkout-noPayment">
                          <div class="checkout-noPayment-body h5 pt-2">No Payment Due</div>
                        </div>
                      </div>
                      <!-- END No Payment -->

                      <span class="checkout-paymentError">
                        
                      </span>

                      <!-- Applied Payments -->
                      
                      <!-- END Applied Payments -->
                    </div>
                  
							
</div>
                </div>
              </div>
            </div>
            <!-- Place Order -->
            <div class="checkout-placeOrder w-200px ms-auto">
              <div class="checkout-placeOrderBtn mt-2 d-grid"><input type="submit" name="btnPlaceOrder" value="Place Order" id="btnPlaceOrder" class="ThemeButton PlaceOrderThemeButton OnePageCheckoutPlaceOrderThemeButton btn btn-dark" onclick='popup()' style="background: #007b70;"></div>
            </div>
            <!-- END Place Order -->
          </div>
        </div>
        <!-- END Payment Methods -->

                                           



        <!-- Applied Payment -->
        <!--[ac] The following layoutareas are rendered via the  merge code above -->
        

        
        <!-- END Applied Payment -->

        <!-- Custom Payment Methods Area -->
        
        <!-- END Custom Payment Methods Area -->

        <!-- Custom Payment Field -->
        
        <!-- END Custom Payment Field -->


        <!-- Applied Gift Certificates Area -->
        
        <!-- END Applied Gift Certificates Area -->

        <!-- Mailing List Area -->
        
        <!-- END Mailing List Area -->
      </div>

      <!-- Bottom Widgets -->
      
      <!-- END Bottom Widgets -->
    </div>

    <!-- Order Summary -->
    <div class="checkout-summary col-xl-5" sticky="True">  
      <div class="checkout-summary-body side-totals-area card-body">
        <!-- Checkout Cart -->

        <div class="totalsArea-subtotal-headerWrap card-body bg-accent">
          <div class="totalsArea-subtotal-header row row-cols-auto mx-0 mt-2 justify-content-between h4 border-bottom">
            <div class="totalsArea-subtotal-label ShoppingCartTotals mb-3 fw-bold">
              Order Summary
            </div>
            <div class="totalsArea-subtotal-text ShoppingCartPrice mb-3">
              <a class="" href="/store/ShopCart.aspx"> Edit Cart </a>
            </div>
          </div>
        </div>
        <div id="UpdatePanelCartArea">
	
						
          <div class="checkout-confirm card-body bg-accent mb-3">
            <div class="checkout-cart-items d-none d-md-block">7 Item(s)</div>

            <div class="checkout-confirm-table ShoppingCart OnePageCheckoutShoppingCart mt-sm-3">
              
										

        <!--[ac]
#####                         ###                     
#     #   ##   #####  #####     #  ##### ###### #    # 
#        #  #  #    #   #       #    #   #      ##  ## 
#       #    # #    #   #       #    #   #####  # ## # 
#       ###### #####    #       #    #   #      #    # 
#     # #    # #   #    #       #    #   #      #    # 
#####  #    # #    #   #      ###   #   ###### #    # 

-->
        <div class="ShoppingCart-item ShoppingCartItem row row-cols-auto mb-2 m-0">
          <div class="ShoppingCartItem-img d-none d-md-block col-md-auto p-0">
            <img src="https://wenfeeusa.americommerce.com//resize?po=https%3a%2f%2fwenfee.com%2fjasmine%2fthenewwenfee%2fstorage%2fapp%2fpublic%2fproducts%2fMay2021%2fjZHle8MkXrQURQ5QIOhw.jpg&amp;bw=75&amp;lr=t" alt="Hot Lahmajun Halal">
          </div>
          <div class="ShoppingCartItem-desc col-auto col-lg-7 h5">
            <span class="ShoppingCartItem-name"><span id="rpCartContents_ctl00_lblItemName" class="ShoppingCartItemName">Hot Lahmajun Halal</span></span>
            <span class="ShoppingCartItem-nr small text-muted"> (<span id="rpCartContents_ctl00_lblItemNr" class="ShoppingCartItemNr">_MTSK003</span>) </span>
            <div class="ShoppingCartItem-qty fw-bold">Qty: <span id="rpCartContents_ctl00_lblQuantity">5</span></div>
            <div class="ShoppingCartItem-customized text-muted small mt-1 hide-no-text" style="display: none;">
              <span class="ShoppingCartItem-variants"></span>
              <span class="ShoppingCartItem-personal"></span>
            </div>
          </div>
          <div class="ShoppingCartItem-priceWrap pe-0 ms-auto">
            <div class="ShoppingCartItem-total col-12 pe-0 text-end"><span id="rpCartContents_ctl00_lblProductSubTotal">$94.95</span></div>
            
              <div class="ShoppingCartItem-price col-12 pe-0 text-end text-muted small"><span id="rpCartContents_ctl00_lblProductPrice">$18.99</span> each</div>
            
          </div>
        </div>								
   

            <hr>


            <div class="ShoppingCart-totalsWrap">
              <div class="ShoppingCart-totals">
                <div class="main-totals-area pad-20">
                  <div class="totalsArea w-100 b-0 p-0">
                    <div id="trSubtotal">
                      <div class="totalsArea-subtotal row row-cols-auto m-0 justify-content-between">
                        <div class="totalsArea-subtotal-label ShoppingCartTotals">
                          <b>Subtotal:</b>
                        </div>
                        <div class="totalsArea-subtotal-text ShoppingCartPrice">
                          <span id="lblSubtotalCart">$132.93</span>
                        </div>
                      </div>
                    </div>
                    
                      <div id="trShipping" class="totalsArea-shipping row row-cols-auto m-0 justify-content-between">
                        <div class="totalsArea-shipping-label ShoppingCartTotals">
                          <b>Shipping:</b>
                          <span id="lblShippingInfo">(14.00 lbs.)</span>
                        </div>
                        <div class="totalsArea-shipping-text ShoppingCartPrice"><span id="lblShippingTotal">$15.99</span></div>
                      </div>
                    
                    
                    
                    
                    
                    
                    
                    
                      <div id="trPointsEarned" class="totalsArea-reward body row row-cols-auto m-0 justify-content-between h5">
                        <div class="totalsArea-reward-label ShoppingCartTotals">Points Earned</div>
                        <div class="totalsArea-reward-text ShoppingCartPrice"><span id="lblPointsEarned">0</span></div>
                      </div>
                    
                    
                    
                      <div class="totalArea-total row row-cols-auto m-0 justify-content-between border-top mt-2 pt-2 fw-bolder h3">
                        <div class="totalArea-total-label ShoppingCartTotals"><b style="color: #007b70;">Total:</b></div>
                        <div class="totalArea-total-text ShoppingCartPrice"><span id="lblTotal">$148.92</span></div>
                      </div>
                    
                    
                      <div class="totalArea-points orPoints">
                        <div class="text-end fw-bold">
                          <div class="small fw-bold">-or-</div>
                          <div id="trTotalInPoints" class="">
                            (<span class="totalArea-points-text ShoppingCartPrice"><span id="lblTotalInPoints">14892</span></span> 
                            <span class="totalArea-points-label ShoppingCartTotals">Points</span>)
                          </div>
                        </div>
                      </div>
                    
                    
                    

                  </div>
                </div>
              </div>
            </div>
          </div>
        
						<div></div>
						<input type="hidden" name="hdUsePaymentCart" id="hdUsePaymentCart" value="false" data-lpignore="true">
						<input type="hidden" name="hdUseQuoteCart" id="hdUseQuoteCart" data-lpignore="true">
                        <input type="hidden" name="hdPayPalOrderToken" id="hdPayPalOrderToken" data-lpignore="true">
                        <input type="hidden" name="hfcartbalance" id="hfcartbalance" value="148.92" data-lpignore="true">
                        <input type="submit" name="btnGetPayPalToken" value="" id="btnGetPayPalToken" style="display:none;">
					
</div></div>
      <!-- END Checkout Cart -->

      <!-- Checkout Item -->
      
      <!-- END Checkout Item -->
    </div>

    <!-- END Order Summary -->

    <!-- One Page Checkout Script -->
    
      <script>
        Updater(() => {
          addClass("[id*='rbShippingMethods']", "shipping-as-list");
          addClass("[id*='rbShippingMethods'] tbody", "list-group");
          addClass("[id*='rbShippingMethods'] tr", "list-group-item", "list-group-action");
        });
      </script>
    
    <script>
      // Add classes 
      Updater(() => {
        addClass("input[type=text],textarea,select", "form-control");
        addClass("#CustomerFieldsUpdatePanel,#UpdatePanelOrderCustomFields", "w-100", "d-grid", "gap-3");
      });

      // Update text
      Updater("#btnApplyCreditCardPayment").register(el => el.value = "Add Card");
      Updater("#btnApplyPoints").register(el => el.value = "Use Points");

      // Themesetting
      const floatSummary = "True".toLowerCase() == "true";
      const showEach = "True".toLowerCase() == "true";
      const themeDir = "/Shared/Themes/Foundation1/";
      const currencySymbol = "$".trim();

      // Move mailing list
      Updater(".checkout-mailing").register(mailingListChk => {
        const anchor = document.querySelector(".mailingListAnchor");
        if(anchor.innerHTML == "") {
          anchor.appendChild(mailingListChk);
          mailingListChk.classList.remove("d-none");
        }
      });
    </script>
    <!-- END One Page Checkout Script --> 

    
  </div>



<script type="text/javascript">
    
    function getParameterByName(name){
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regexS = "[\\?&]" + name + "=([^&#]*)";
        var regex = new RegExp(regexS);
        var results = regex.exec(window.location.search);
        if (results == null) {
            return "";
        }
        else {
            return decodeURIComponent(results[1].replace(/\+/g, " "));
        }
    }

    (function (window, $) {
        $(function () {
            var btnPlaceOrder = $("#btnPlaceOrder"),
                ddPaymentMethodSel = $("select[id*='ddPaymentMethodSel']"),
                mainForm = $("form#MainForm"),
                buttonCover = $(".checkout-button-cover");

            btnPlaceOrder.click(function (e) {
                var paymentMethodText = $('#ucPaymentMethodSelection_ddPaymentMethodSel :selected').text().toLowerCase();
                
                // needed for ipads with iCould and Keychain enabled. 
                // try catch because changing the "type" of an input if finnicky across browsers and jquery versions.
                try{
                    $("input[type=password]").attr("type", "hidden");
                } catch(ex){
                    try {
                        $("input[type=password]").prop("type", "hidden");
                    } catch(ex) {}
                }
                
                if (window.parent && paymentMethodText.indexOf("paypal") > -1) {
                    mainForm.attr("target", "_top");
                }

                var coords = $(this).offset();

                buttonCover.appendTo("body").offset({ top: coords.top - 10, left: coords.left - 10 }).hide()
                    .width($(this).outerWidth() + 20)
                    .height($(this).outerHeight() + 20)
                    .fadeTo(500, 0.9);

                if (paymentMethodText.indexOf("credit card") > -1 && $('#hfGenerateCCToken').val() == "1" && $('#hfccToken').val() == "") {
                    let zip, street, city, country;
                    if ($('#hfRequestShippingFirst').val() === "True" && $("#rblSameAsBillingAddress").find("input:checked").val() === "1") {
                        zip = $('#addrShipping_txtZipCode').val();
                        street = $('#addrShipping_txtAddress1').val();
                        city = $('#addrShipping_txtCity').val();
                        country = $('#addrShipping_ddCountryID :selected').text();
                    }
                    else {
                        zip = $('#addrBilling_txtZipCode').val();
                        street = $('#addrBilling_txtAddress1').val();
                        city = $('#addrBilling_txtCity').val();
                        country = $('#addrBilling_ddCountryID :selected').text();
                    }
                    GenerateCreditCardToken(street, city, zip, country);
                }
                else {
                    $(this).unbind("click");
                    $(this).click(function (event) {
                        event.preventDefault();
                    });
                }
            });

            $("#txtAmazonEmail").change(function () {
                $("#addrBilling_txtEmailAddress").val($(this).val());
                $("#addrShipping_txtEmailAddress").val($(this).val());
                $("#addrBilling_txtConfirmEmailAddress").val($(this).val());
                $("#addrShipping_txtConfirmEmailAddress").val($(this).val());
            });

            // disable Place Order button until the Payment Widget says we have a selected method
            var sAmazonPCID = getParameterByName("purchaseContractId");
            if (sAmazonPCID != "") {
                btnPlaceOrder.hide();
                //$("#dvAmazonEmail").show();
            }
            else
            {
                //$("#dvAmazonEmail").hide();
            }
        });
    })(window, jQuery);
</script>









<div style="display: none;">
    <div class="checkout-button-cover">
        <div class="spinner-three-quarters">Loading...</div>
    </div>
</div>




<script>
    function setupTxtCCExpiration() {
        var txtCCExpiration = document.getElementById('txtCCExpiration');
        if (txtCCExpiration) {
            setupCCExpirationInputMask(txtCCExpiration);
        }
    }

    // Attempt to setupTxtCCExpiration. This is relevant when the page is loaded with the Credit card
    // form fields visible. This occurs when you submit the page with errors on the credit card form.
    // Other wise setupTxtCCExpiration will be called on pageManager.EndRequest
    setupTxtCCExpiration();

    function setupCCExpirationInputMask (ccExp) {
        var dateMask = IMask(ccExp, {
            mask: Date,

            pattern: 'm/`Y',

            blocks: {
                m: {
                    mask: IMask.MaskedRange,
                    from: 1,
                    to: 12,
                    maxLength: 2,
                },
                Y: {
                    mask: '00'
                }
            },
            // define date -> str convertion
            format: function (date) {
                var day = date.getDate();
                var month = date.getMonth() + 1; 
                var year = date.getFullYear().toString().substr(-2);

                if (day < 10) day = "0" + day;
                if (month < 10) month = "0" + month;

                return [month, year].join('/');
            },
            // define str -> date convertion
            parse: function (str) {
                var monthYear = str.split('/');
                return new Date(monthYear[1], monthYear[0] - 1);
            },

            autofix: true,

            // also Pattern options can be set
            lazy: true,

            placeholderChar: '_',

            // and other common options
            overwrite: true  // defaults to `false`
        });
    }
</script>
<style>
.number-product {
    display: inline-block;
    width: 38px;
    height: 32px;
    border-radius: 5px;
    font-size: 24px;
    border: 1px solid silver;
    text-align: center;
}

.fa, .fab, .fad, .fal, .far, .fas
{
  display: flex ;
}
.navbar-light .navbar-brand
{
  color : #007b70 ;
}
input[type="radio"]:checked, .active.payment-method .payment-name:not(.arrow):before, .radio.checked:before
{
  background:#007b70;
}
.btn-outline-success
{
  color : #fff;
  border-color:#fff ;
  height: 38px;
  width: 42px;
  padding: 6px 12px;
}
}
h4, .h4
{
  color : #007b70 ;
}
.alert.alert-danger 
{
    width: 200px;
}
#Radio_Div
{
  color : #007b70 ;
  margin : 0 0 20px 0 ;
}
#Radio_Div span
{
  font-weight : 500 ;
}
#Date_span{
  font-weight : 500;
  color : #007b70 ;
}
a {
    color: #007b70;
}
input[type="text"], input[type="email"], textarea {
  
  display: block;
    width: 100%;
    padding:10px ;
    font-weight: 400px;
    background-clip: padding-box;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.cd-cart-items input[type="text"] {
  display: inline-block;
    width: 38px;
    height: 32px;
    background: #fff;
    font-size: 24px;
    font-weight: 500;

}
textarea.form-control {
    min-height: 70px;
    width : 100% ;
}
.navbar input[type="search"]
{
  height : 38px ;
}
.btn-outline-success {
    color: #fff;
    border-color: #fff;
}

</style>
<link rel='stylesheet' href="{{ asset('css/Navbar.css') }}" />



            </div>
          </section>
        </div>
      </section>
      <!-- END Content -->


      <!-- POP UP -->
                                            <div class='overlay'>
                                      <div class='popup-container'>
                                        <div class='title'>
                                          TITLE
                                        </div>
                                        <div class='pop-up-content'>
                                          Lorem ipsum dolor sit amet, tota iuvaret efficiantur no eum. Qui aliquid efficiendi ea, vel possit aperiri invenire ea. Ut suscipit eleifend eos, te nisl affert duo, at est cetero iriure sapientem. His qualisque concludaturque ex, his ex habeo efficiendi. An mei probo impedit, per putent adipisci liberavisse at, usu lobortis theophrastus cu.
                                        </div>
                                        <button class='close' onclick='closePopup()'>
                                          Close
                                        </button>
                                      </div>
                                    </div>
                                    <style>
                                      
                                      /* POP UP */
                                      .overlay {
                                        position: absolute;
                                        top: 0;
                                        bottom: 0;
                                        left: 0;
                                        right: 0;
                                        background: rgba(0,0,0,0.51);
                                        display: none;
                                        animation: fade 0.6s;
                                      }
                                      .popup-container {
                                        display: flex;
                                        flex-wrap: wrap;
                                        justify-content: center;
                                        align-items: center;
                                        position: relative;
                                        background: #fff;
                                        width: 65%;
                                        margin: 200px auto;
                                        padding: 40px;
                                        border-radius: 5px;
                                      }
                                      .title {
                                        color : #007b70;
                                        font-size: 25px;
                                        font-weight: bold;
                                      }
                                      .pop-up-content {
                                        margin-top: 10px;
                                        line-height: 20px;
                                      }
                                      .close {
                                        padding: 0 15px;
                                        margin-top: 20px;
                                        height: 35px;
                                        width : 120px;
                                        background: #007b70;
                                        border-radius: 5px;
                                        border: none;
                                        color: #fff;
                                        font-size: 16px;
                                        font-weight: bold;
                                      }
                                      .close:hover {
                                        background: #003c50;
                                        transition: background-color 300ms linear;
                                      }

                                      @keyframes fade {
                                        0% {
                                          opacity: 0;
                                        }
                                        100% {
                                          opacity: 1;
                                        }
                                      }
                                      /*PoPUP */
                                    </style>
                                    <script>
                                      //pop up
                                      const disclaimer = document.querySelector('.overlay')

                                      function popup(){
                                        disclaimer.style.display = "block";
                                        disclaimer.style.opacity = 1
                                      }

                                      function closePopup(){
                                        disclaimer.style.display = "none";
                                      }

                                      </script>

                                    <!-- POP UP -->

      

     


@endsection
