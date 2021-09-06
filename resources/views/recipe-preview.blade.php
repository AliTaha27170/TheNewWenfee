@extends('layouts.app')
@php
use     App\hellpers\like_;
@endphp
@section('content')

<div class="pro-details-page">
    <div class="pro-details-box">
        <div class="row">

            <div class="col-md-6">
                <div class="about">
                    <h3 id="Recipe_Name">
                        {{$recipe->title}}
                    </h3>
                    <h3 id="Ingredients_tittle">Ingredients</h3>
                <ol class="continuous-list" id="Ingredients">
                    {!!$recipe->Ingredients!!}
                </ol>
                </div>
            </div>
            <div class="col-md-5">
                <div class="slider-for">
                    <div class="product2"><img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $recipe->recipe_image }}" width="250px" height="auto" alt=""></div>
                    <div class="product2"><imgsrc="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $recipe->recipe_image }}" width="250px" height="auto" alt=""></div>
                </div>
            </div>
            <div class="col-md-1">
                <div class="slider-nav">
                    <div class="product2"><imgsrc="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $recipe->recipe_image }}" width="70px" height="auto" alt=""></div>
                    <div class="product2"><imgsrc="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $recipe->recipe_image }}" width="70px" height="auto" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="RecipesMethodBox">
        <div class="row">
                <div class="col-md-10">
                    <h3>Method</h3>
                    <ul class="continuous-list">
                        {!!$recipe->main_desc!!}
                    </ul>
                </div>
                <div class="col-md-2" id="chief_Image_Section">
                    <img src="https://i.ibb.co/j8vSrwP/chef-wenfee.png" id="chief_Image" alt="">
                </div>
            </div>
            </div>
<section class="products">
    <div class="heading">
        <h3>Ingredients </h3>
    </div>
    <br>
    <div class="products-slider-pr">
        <div class="products-slider">
            @if ( isset($recipe->res_products))
                @foreach ($recipe->res_products as $prod)
                    <div>
                        <div class="item">
                            <a  class="fav-btn"><i class="{{ (isset(auth()->user()->id) and like_::check($prod->product->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart' }}"

                                @if (isset(auth()->user()->id) and like_::check($prod->product->id))
                                onclick="unLike(this,{{ $prod->product->id }})"
                                @else
                                onclick="like(this,{{ $prod->product->id }})"


                                @endif

                                ></i><!--class="fas fa-heart"--></a>                                    <a href="{{ route('show-product', $prod->product->id) }}" class="content">

                                @if ($prod->product->is_offer and isset($prod->product->discount) )
                                <p class="sale">{{ $prod->discount }}% OFF</p>
                                @elseif ($prod->product->is_offer)
                                <small class="sale">Free Shipping</small>
                                @endif

                                <div class="background-image"
                                    style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->product->image}}');"></div>

                                <h3>
                                    <span class="brand">{{ $prod->product->name }}</span>
                                    <span class="code">#{{ $prod->product->code }}</span>
                                </h3>
                               <h4 style="height: 192px">{!! $prod->product->body  !!}

                                @if ($prod->product->frozen)
                                    <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                                @endif

                                @if ($prod->product->refrigerated)
                                     <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
                                @endif
                               </h4>
                                @if ($prod->product->discount)
                                    <p class="price">
                                        <strong>${{ $prod->product->price - $prod->product->price * ($prod->product->discount / 100) }}</strong>
                                        <span><del>${{ $prod->product->price }}</del></span>
                                    </p>
                                @else
                                    <p class="price"><strong>${{ $prod->product->price }}</strong></p>
                                @endif
                            </a>

                            <div class="cart-pr">
                                <div class="cart">
                                    <a
                                    @if($prod->product->call_for_price)
                                    class="callforprice" href="{{ route('contact') }}"
                                @elseif($prod->product->out_of_stock)
                                class="outofstock"
                                @else
                                class="add-cart-btn"  onclick="add_to_cart_main({{ $prod->product->ac_id }},{{ $prod->product->id }});" href="javascript:void(0);"
                                @endif
                                    >
                                    @if($prod->product->call_for_price)
                                        <span> call for price </span>
                                @elseif($prod->product->out_of_stock)
                                     <span> Out of stock </span>
                                @else
                                <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                Add to cart
                                            @endif


                                    </a>
                                    <div class="counter">
                                        <button type="button" class="minus-btn"><img
                                                src="{{ asset('img/minus.svg') }}"></button>
                                        <input readonly name="qty" type="text" value="1" id="qty{{  $prod->product->id }}">
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


@endsection
