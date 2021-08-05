@extends('layouts.app')

@section('content')
    <!--<link rel="stylesheet" href="/css/wrunner-default-theme.css">
    <script src="/libs/wrunner/wrunner-native.js"></script>-->
    <div class="product-page">
        <div class="row">
            <div class="col-md-12">
                <h2 id="Fav_Header">Your Favourite Products</h2>
                <!--Search-->
                <div class="Favourite-Page-search">
    <div class="search_questions_wrap">
      <svg width="19" height="19" viewBox="0 0 19 19" fill="none" class="icon" xmlns="http://www.w3.org/2000/svg">
        <path d="M13.6224 11.9819C14.5359 10.7345 15.0823 9.20224 15.0823 7.5412C15.0823 3.38312 11.6992 0 7.54112 0C3.38307 0 0 3.38312 0 7.5412C0 11.6993 3.3831 15.0824 7.54115 15.0824C9.20219 15.0824 10.7345 14.5359 11.982 13.6225L16.9223 18.5629L18.5629 16.9223C18.5629 16.9223 13.6224 11.9819 13.6224 11.9819ZM7.54115 12.762C4.66223 12.762 2.32037 10.4201 2.32037 7.5412C2.32037 4.66226 4.66223 2.32038 7.54115 2.32038C10.4201 2.32038 12.7619 4.66226 12.7619 7.5412C12.7619 10.4201 10.42 12.762 7.54115 12.762Z" fill="#007b70"></path>
      </svg>
      <button class="btn-grey brands-clear">
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8 16C12.4111 16 16 12.4111 16 8C16 3.58887 12.4111 0 8 0C3.58887 0 0 3.58887 0 8C0 12.4111 3.58887 16 8 16ZM4.76437 5.70706C4.63416 5.57691 4.63416 5.36584 4.76437 5.23566L5.23563 4.76437C5.36584 4.63422 5.57684 4.63422 5.70706 4.76437L8 7.05728L10.2929 4.76434C10.4232 4.63419 10.6342 4.63419 10.7644 4.76434L11.2357 5.23566C11.3659 5.36581 11.3659 5.57688 11.2357 5.70706L8.94272 8.00003L11.2357 10.293C11.3659 10.4231 11.3659 10.6342 11.2357 10.7644L10.7644 11.2357C10.6342 11.3658 10.4232 11.3658 10.2929 11.2357L8 8.94275L5.70706 11.2357C5.57684 11.3658 5.36584 11.3658 5.23563 11.2357L4.76434 10.7644C4.63413 10.6342 4.63413 10.4232 4.76434 10.293L7.05728 8.00003L4.76437 5.70706Z" fill="black"></path>
</svg>
      </button>
      <input id="search_questions" name="search" type="search" autofocus="" placeholder="Search" class="input-text" maxlength="128">
    </div>
  </div>
                  <!--Search-->
                  <div class="container NumberOfProducts">
            <span>20 Items</span>
            </div>
                <div class="right-panel">
                    <div class="products">
                        <div class="grid">
                            @if ($products->count() > 0)
                                @foreach ($products as $prod)
                                <div class="item">
                                    <button class="fav-btn"><i class="fi fi-rr-heart"></i></button>
                                    <a href="{{ route('show-product', $prod->id) }}" class="content">
                                        @if ($prod->is_offer and isset($prod->discount) )
                                            <p class="sale">{{ $prod->discount }}% OFF</p>
                                            @elseif ($prod->is_offer)
                                            <small class="sale">Free Shipping</small>
                                        @endif
                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/strorge/{{ $prod->image}}')"></div>

                                        <h3>
                                            <span class="brand">{{ $prod->name }}</span>
                                            <span class="code">#{{ $prod->code }}</span>
                                        </h3>
                                        <h4 style="height: 150px">{!! $prod->body  !!}
                                        <span class="NewProduct">NEW</span>
                                        <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                                    </h4>

                                        @if ($prod->discount)
                                            <p class="price">
                                                <strong>${{ $prod->price - $prod->price * ($prod->discount / 100) }}</strong>
                                                <span><del>${{ $prod->price }}</del></span>
                                            </p>
                                        @else
                                            <p class="price"><strong>${{ $prod->price }}</strong></p>
                                        @endif
                                    </a>

                              
                     
                                    <div class="cart-pr">
                                        <div class="cart">
                                            <a  class="add-cart-btn"  onclick="add_to_cart_main({{ $prod->ac_id }},{{ $prod->id }});" href="javascript:void(0);">
                                                <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                                Add to cart</a>
                                            <div class="counter">
                                                <button type="button" class="minus-btn"><img
                                                        src="{{ asset('img/minus.svg') }}"></button>
                                                <input readonly name="qty" type="text" value="1" id="qty{{  $prod->id }}">
                                                <button type="button" class="plus-btn"><img
                                                        src="{{ asset('img/plus.svg') }}"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach

                            @endif

                        </div>
            
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- adding to cart alert -->
    <div class="alert hide">
  <span class="fas fa-exclamation-circle"></span>
  <span class="msg">You added Product to your shopping cart.</span>
  <div class="close-btn">
    <span class="fas fa-times"></span>
  </div>
</div>
<style>
    .alert{
  background: #007b71c6;
  padding: 20px 40px;
  width: 600px;
  position: fixed;
  right: -15px;
  top: 80%;
  border-radius: 4px;
  border-left: 8px solid #007B70;
  overflow: hidden;
  opacity: 0;
  pointer-events: none;
  z-index: 10;
}
</style>
<script>
    $('.add-cart-btn').click(function(){
  $('.alert').addClass("show");
  $('.alert').removeClass("hide");
  $('.alert').addClass("showAlert");
  setTimeout(function(){
    $('.alert').removeClass("show");
    $('.alert').addClass("hide");
  },2000);
});
$('.close-btn').click(function(){
  $('.alert').removeClass("show");
  $('.alert').addClass("hide");
});
</script>
    <!-- adding to cart alert -->
@endsection

@push('styles')
    <style>
        /*Pagination*/
        .pagination-div {
            margin-top: 40px;
        }

        .pagination-div .pagination {
            display: block;
            margin-bottom: 0px;
            list-style-type: none;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .pagination-div .pagination li {
            display: inline-block;
            color: #0056b3;
        }

        .pagination-div .pagination li a {
            font-family: "Futura-Bold", sans-serif;
            font-size: 14px;
            background: #ffffff;
            border: 1px solid #ffffff;
            display: inline-block;
            text-align: center;
            height: 30px;
            /* line-height: 26px; */
            font-weight: 500;
            letter-spacing: 1px;
        }

        .pagination-div .pagination li a:hover {
            color: #000;
        }

        .pagination-div .pagination li a i {
            margin: 0px 5px;
        }

        .pagination-div .pagination li a.page-number {
            width: 30px;
            border-radius: 100%;
            color: #0056b3;
        }

        .pagination-div .pagination li a.page-number.current {
            background: #0056b3;
            border: 1px solid #0056b3;
            color: #ffffff;
        }

        /*Pagination*/
            .carousel{
                display: none;
            }
     
    </style>
@endpush
