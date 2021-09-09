@extends('layouts.app')

@section('content')
    <link rel="stylesheet" href="/css/wrunner-default-theme.css">
    <script src="/libs/wrunner/wrunner-native.js"></script>
    <div class="product-page">
        <div class="row">

            <div class="col-md-3">
                <form id="search-form" action="{{ route('viewall') }}" method="GET">

                    <div class="left-panel">
                        <h2 id="Medical_Categories">Medical Supplies</h2>
                        <ul id="Medical_List">
                            <li><a href="#"> Vitamins & Dietary Supplements </a></li>
                            <li><a href="#"> Pain Relievers </a></li>
                            <li><a href="#"> Disposable Face Masks & Gloves </a></li>
                            <li><a href="#"> Band Aids </a></li>
                            <li><a href="#"> Sexual Wellness </a></li>
                            <li><a href="#"> Pregnancy Tests </a></li>
                            <li><a href="#"> Gift Bags </a></li>
                        </ul>
                        <h2>Price</h2>
                        <input hidden name="maxPrice" value="{{ request()->maxPrice ? request()->maxPrice : 100 }}"
                            type="text" id="maxPrice">
                        <input hidden name="minPrice" value="{{ request()->minPrice ? request()->minPrice : 0 }}"
                            type="text" id="minPrice">

                        <div class="my-js-slider"></div>
                        <br>
                        <h2>Offer/Discount </h2>
                        <input type="checkbox" name="offer" {{ request()->offer ? 'checked' : '' }} id="box-1">
                        <label for="box-1">Offer</label>
                    </div>
                </form>
            </div>

            <div class="col-md-9">
            <h2 id="Medical_Header">Medical Supplies</h2>
            <!--_____________________________________________________________________-->

    <div class="Medical-carousel">
  <div class="slide">
    <img src="https://wenfee.com/Slides/2.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

    <div class="slide">

    <img src="https://wenfee.com/Slides/4.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

    <div class="slide">


    <img src="https://wenfee.com/Slides/5.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

    <div class="slide">

    <img src="https://wenfee.com/Slides/6.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

  <div class="slide">

    <img src="https://wenfee.com/Slides/8.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

  <div class="slide">

    <img src="https://wenfee.com/Slides/9.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

  <div class="slide">

    <img src="https://wenfee.com/Slides/10.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

  <div class="slide">

    <img src="https://wenfee.com/Slides/11.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

  <div class="slide">

    <img src="https://wenfee.com/Slides/12.jpg" class="background-image" alt="Small succulent in round planter">
  </div>

  <div class="slide">

    <img src="https://wenfee.com/Slides/13.jpg" class="background-image" alt="Small succulent in round planter">
  </div>
</div>

<!--_____________________________________________________________________-->
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
                                            style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->image}}')"></div>

                                        <h3>
                                            <span class="brand">{{ $prod->name }}</span>
                                            <span class="code">#{{ $prod->code }}</span>
                                        </h3>
                                        <h4 style="height: 192px">{!! $prod->body  !!}
                                        <span class="NewProduct">NEW</span>
                             @if ($prod->frozen)
                                <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                            @endif

                            @if ($prod->refrigerated)
                                 <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
                            @endif
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
                                            <a
                                            @if($prod->call_for_price)
                                            class="callforprice" href="{{ route('contact') }}"
                                        @elseif($prod->out_of_stock)
                                        class="outofstock"
                                        @else
                                        class="add-cart-btn"  onclick="add_to_cart_main({{ $prod->ac_id }},{{ $prod->id }});" href="javascript:void(0);"
                                        @endif
                                            >
                                            @if($prod->call_for_price)
                                                <span> call for price </span>
                                        @elseif($prod->out_of_stock)
                                             <span> Out of stock </span>
                                        @else
                                        <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                        Add to cart
                                                    @endif


                                            </a>
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
@endsection
@push('styles')
    <style>
        /*Pagination*/
        .slide .background-image {
            margin : 0 ;
        }
    </style>
    <Script>
        //SLider//

window.addEventListener('DOMContentLoaded', function(e) {
    $('.Medical-carousel').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 7000,
      prevArrow: '<button class="previous-button is-control">' +
                 '  <span class="fas fa-angle-left" aria-hidden="true"></span>' +
                 '  <span class="sr-only">Previous slide</span>' +
                 '</button>',
      nextArrow: '<button class="next-button is-control">' +
                 '  <span class="fas fa-angle-right" aria-hidden="true"></span>' +
                 '  <span class="sr-only">Next slide</span>' +
                 '</button>'
    });
  });



//Slider//
    </Script>
@endpush
