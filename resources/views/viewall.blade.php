@extends('layouts.app')

@section('content')
@php
use     App\hellpers\like_;
@endphp
    <link rel="stylesheet" href="/css/wrunner-default-theme.css">
    <script src="/libs/wrunner/wrunner-native.js"></script>

    <div class="product-page">
        <div class="row">

            <div class="col-md-3">
                <form id="search-form" action="{{ route('viewall') }}" method="GET">

                    <div class="left-panel">
                        <h2>Category</h2>
                        <div class="select">
                            <select name="slug">
                                <option value="">All Categories</option>
                                @foreach ($categories as $item)
                                    @if (request()->slug)
                                        <option value="{{ $item->slug }}"
                                            {{ $item->slug == request()->slug ? 'selected' : '' }}>{{ $item->name }}
                                        </option>
                                    @else
                                        <option value="{{ $item->slug }}">{{ $item->name }}</option>
                                    @endif
                                @endforeach

                            </select>
                            <div class="select__arrow"></div>
                        </div>

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
                <div class="container Number-Of-Products">
                  <span> 5 Items</span>
                </div>
                <div class="right-panel">
                    <div class="products">
                        <div class="grid">
                            @if ($products->count() > 0)
                                @foreach ($products as $prod)
                                <div class="item">
                                    <a  class="fav-btn"><i class="{{ (isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart' }}"    

                                        @if (isset(auth()->user()->id) and like_::check($item->id))
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
