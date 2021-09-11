@extends('layouts.app')

@section('content')
@php
use     App\hellpers\like_;
@endphp
    <div class="pro-details-page">
        <div class="pro-details-box">
            <div class="row">
                <?php $images = json_decode($product->gallery); ?>
                <div class="col-md-1 product_mob">
                    <div class="slider-nav">
                        <div class="product2"><img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $product->image}}" width="70px" height="auto"
                                alt=""></div>
                        @if ($images)
                            @if (count($images) > 0)
                                @foreach ($images as $image)
                                    <div class="product2"><img src="{{ Voyager::image($image) }}" width="70px"
                                            height="auto" alt=""></div>
                                @endforeach
                            @endif
                        @endif
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="slider-for">
                        <div class="product2"><img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $product->image}}" width="250px" height="auto"
                                alt=""></div>
                        @if ($images)
                            @if (count($images) > 0)
                                @foreach ($images as $image)
                                    <div class="product2"><img src="{{ Voyager::image($image) }}" width="250px"
                                            height="auto" alt=""></div>
                                @endforeach
                            @endif
                        @endif
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about">
                        <h3>
                            <span class="brand">{{ $product->name }}</span>
                        </h3>
                        <h4 style="height: 192px">
                        <p class="ProductName" style="margin-top: 50px;">{!! $product->body  !!}</p>
                        </h4>
                        <span class="NewProduct">NEW</span>
                        @if ($product->frozen)
                        <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                    @endif

                    @if ($product->refrigerated)
                         <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
                    @endif

                        <ul class="props-list">
                            <li>
                                <img src="/img/hashtag.svg">
                                <p>
                                    <span>Code: </span>
                                    <b>{{ $product->code }}</b>
                                </p>
                            </li>
                            @if ($product->cookbook_author)
                                <li>
                                    <img src="/img/auther.svg">
                                    <p>
                                        <span>Auther: </span>
                                        <b>{{ $product->cookbook_author }}</b>
                                    </p>
                                </li>
                            @endif
                            <li>


                                @if ($product->size==0)
                                <img src="/img/offer.png">
                                <p>
                                    <span>Offer  </span>
                                    <b>Shipping included</b>
                                </p>
                                @else
                                <img src="/img/weight.svg">
                                <p>
                                    <span>Weight: </span>
                                    <b>{{ $product->size }}</b>
                                </p>
                                <span style="
                                        color: #999;
                                        font-weight: bold;
                                        padding-left: 7px;
                                    ">LBS
                                </span>
                                   @endif



                            </li>
                        </ul>

                        @if ($product->discount)
                            <p class="price">
                                <strong>${{ $product->price - $product->price * ($product->discount / 100) }}</strong>
                                <span><del>${{ $product->price }}</del></span>
                            </p>
                        @else
                            <p class="price"><strong>${{ $product->price }}</strong></p>
                        @endif

                        <div class="description">
                            {!! $product->body !!}
                        </div>



                            <div class="cart-pr">
                                <div class="cart">

                                    <a
                                    @if($product->call_for_price)
                                    class="callforprice" href="{{ route('contact') }}"
                                @elseif($product->out_of_stock)
                                class="outofstock"
                                @else
                                class="add-cart-btn"  onclick="add_to_cart_main({{ $product->ac_id }},{{ $product->id }});" href="javascript:void(0);"
                                @endif
                                    >
                                    @if($product->call_for_price)
                                        <span> call for price </span>
                                @elseif($product->out_of_stock)
                                     <span> Out of stock </span>
                                @else
                                <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                Add to cart
                                            @endif


                                    </a>
                                    <div class="counter">
                                        <button type="button" class="minus-btn"><img
                                                src="{{ asset('img/minus.svg') }}"></button>
                                        <input readonly name="qty" type="text" value="1" id="qty{{  $product->id }}">
                                        <button type="button" class="plus-btn"><img
                                                src="{{ asset('img/plus.svg') }}"></button>
                                    </div>
                                </div>
                            </div>


                        <div class="share-box">
                            <strong>Share The product</strong>
                            <div class="social">
                                <a href="#" id="FB_Share" target="_blank"><img src="{{ asset('img/sc/facebook.png') }}"></a>
                                <a href="#" id="Twitter_Share" target="_blank"><img src="{{ asset('img/sc/twitter.png') }}"></a>
                                <a href="#" id="Whatsapp_Share" target="_blank"><i class="fab fa-whatsapp"></i></a>
                                <script>
                                                                        /* Share Buttons */
                                    var FB_ShareButton = document.getElementById('FB_Share') ; //FaceBook
                                    FB_ShareButton.href = "https://www.facebook.com/sharer.php?u=" +  window.location.href; //Facebook

                                    var Twitter_ShareButton = document.getElementById('Twitter_Share') ; //Twitter
                                    Twitter_ShareButton.href = "https://www.twitter.com/share?text=text&url=" +  window.location.href +"&hashtags=#Wenfee"; //Twitter

                                    var Whatsapp_ShareButton = document.getElementById('Whatsapp_Share') ; //Whatsapp
                                    Whatsapp_ShareButton.href = "https://api.whatsapp.com/send?phone=&text=" +  window.location.href; //Whatsapp

                                </script>
                            </div>

                        </div>

                        <p class="display" style="display: none;">thank you</p>
                    </div>
                </div>
            </div>
        </div>

        <section class="products">
            <div class="heading">
                <h3>Related Products</h3>
            </div>
            <br>
            <div class="products-slider-pr">
                <div class="products-slider">
                    @if ($products)
                        @foreach ($products as $prod)
                            <div>
                                <div class="item">
                                    <a  class="fav-btn"><i class="{{ (isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart' }}"

                                        @if (isset(auth()->user()->id) and like_::check($prod->id))
                                        onclick="unLike(this,{{ $prod->id }})"
                                        @else
                                        onclick="like(this,{{ $prod->id }})"


                                        @endif

                                        ></i><!--class="fas fa-heart"--></a>                                    <a href="{{ route('show-product', $prod->id) }}" class="content">

                                        @if ($prod->is_offer and isset($prod->discount) )
                                        <p class="sale">{{ $prod->discount }}% OFF</p>
                                        @elseif ($prod->is_offer)
                                        <small class="sale">Free Shipping</small>
                                        @endif

                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->image}}');"></div>

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
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </section>
    </div>
        <!-- adding to cart alert -->
<div class="alert hide">
  <span class="fas fa-exclamation-circle"></span>
  <span class="msg">You added Product to your shopping cart.</span>
  <div class="close-btn">
    <span class="fas fa-times"></span>
  </div>
</div>
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

    <style>
        .carousel{
            display: none;
        }
    </style>
@endsection
