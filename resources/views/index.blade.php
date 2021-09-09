
@extends('layouts.app')

@section('content')
@php
use     App\hellpers\like_;
@endphp


    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <!--_____________________________________________________________________-->

    <div class="carousel">



    @foreach ($slides as $item)
      <div class="slide">
          @if (isset($item->url))

          <a href="{{ $item->url }}">
            <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $item->image}}" class="background-image" alt="{{ $item->title}}">
         </a>
         @else
            <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $item->image}}" class="background-image" alt="{{ $item->title}}">
          @endif
      </div>
    @endforeach






    </div>


    <div class="features-box">
        <ul>

            {{-- <li>
                <img src="/img/features/heart.svg">
                <div>
                    <h1>Healthy Food</h1>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
            </li> --}}
            <li>
                <img src="https://i.ibb.co/wLVpsQK/iconfinder-equipmentrental-2318443.png" style="width: 40px">
                <div>
                    <h1>Order Delivery</h1>
                    <p>To any State.</p>
                </div>
            </li>
            <li>
                <img src="/img/features/wallet.svg">
                <div>
                    <h1>Trusted Payment</h1>
                    <p>100% Payment Protection.</p>
                </div>
            </li>
            <li>
                <img  src="https://i.ibb.co/qBTxBzZ/iconfinder-address-shipping-4301321.png" style="width: 30px">
                <div>
                    <h1> Shipping</h1>
                    <p>Get a Safety Shipping Process By Land or Sea.</p>
                </div>
            </li>
            <li>
                <img src="/img/features/cart.svg">
                <div>
                    <h1> Mediterranean Products </h1>
                    <p>Start Shopping for Your Favorite Products.</p>
                </div>
            </li>
        </ul>
    </div>

    <!--_____________________________________________________________________-->

        <!--____________________Section_____________________-->

        <section class="Our-Categories" >
        <div class="container-fluid">
            <div class="row">
            <h2 id="Categories-Title">Our Categories</h2>
            <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-home"></i>
                     </div>
                    <h4 class="Categorie-Title">Household</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-briefcase-medical"></i>
                     </div>
                    <h4 class="Categorie-Title">Medical Supplies</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-female"></i>
                     </div>
                    <h4 class="Categorie-Title">Beauty & Personal Care</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-glasses"></i>
                     </div>
                    <h4 class="Categorie-Title">Eyewear & Accessories</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-baby-carriage"></i>
                     </div>
                    <h4 class="Categorie-Title">Baby & Child</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-utensils"></i>
                     </div>
                    <h4 class="Categorie-Title">Chef Wenfee Catering</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-hamburger"></i>
                     </div>
                    <h4 class="Categorie-Title">American Foods</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-md-6">
                <a href="#">
            <div class="Categories-box">
                <div class="our-services settings">
                    <div class="icon">
                    <i class="fas fa-paw"></i>
                     </div>
                    <h4 class="Categorie-Title">Pet Care & Foods</h4>
                    <p class="Categorie-Text">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
            </div>
            </a>
        </div>




      </div>
    </div>
</section>




        <!--____________________Section_____________________-->


    <div class="top-cats-box">
        <div class="tcb-box" style="background-image: url('https://i.ibb.co/bmD40gk/dairy.jpg');background-position: left;">
            <div class="content">
                <h1>Dairy Products</h1>
                <a href="/category/cheese" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>
        <div class="tcb-box dark" style="background-image: url('https://images.unsplash.com/photo-1523294587484-bae6cc870010?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=864&amp;q=80">
            <div class="content">
                <h1>Bread &amp;<br>Bakery</h1>
                <a href="/category/bread" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>


        <div class="tcb-box" style="background-image: url('https://i.ibb.co/TwmG5bg/nuts.jpg');/* background-size: cover; */">
            <div class="content">
                <h1>Raw Nuts &amp; Seeds</h1>
                <a href="/category/raw-nuts-and-seeds" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>

    </div>



    <section class="container BrandsSection">

        <h2> <br> <br> Brands</h2>
    <div class="BrandsSlider">
        @foreach($brands as $brand)
        <div class="Brands-item">
            <a href="/brand/{{$brand->slug}}">
                <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $brand->logo}}" alt="BrandLogo">
            </a>
        </div>
        @endforeach

            </div>
            <div  class="container ViewAllButton" >
            <a href="{{ route('brands') }}" target="_blank">View all</a>
            </div>
            </section>




    @if ($slideCategories)
        <div class="filter-box">
            <div class="filter-head">
                <ul>
                    @foreach ($slideCategories as $item)
                        <li><button class="mbtn" onclick="filter('.{{ $item->slug }}', this)">{{ $item->name }}</button>
                        </li>
                    @endforeach
                </ul>
            </div>

            <script>
                function filter(t, btn) {
                    $(".filter-head .active").removeClass("active");
                    $(".filter-box .grid").isotope({
                        filter: t
                    });
                    $(btn).addClass("active");
                }

                $(document).ready(function() {
                    $(".filter-head li button")[0].click();
                })

            </script>

                </div>
{{---
            <div class="products">
                <div class="grid">
                    @foreach ($slideCategories as $item)
                        @foreach ($item->products as  $prod)
                            <div class="{{ $item->slug }} filter-item">
                                <div class="item">
                                    <a  class="fav-btn"><i class="{{ (isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart' }}"

                                        @if (isset(auth()->user()->id) and like_::check($item->id))
                                        onclick="unLike(this,{{ $prod->id }})"
                                        @else
                                        onclick="like(this,{{ $prod->id }})"

                                        @endif

                                        ></i><!--class="fas fa-heart"--></a>
                                        @if($prod->is_ref)
                                    <div class="RefrigeratedProduct"><i class="fas fa-refrigerator"></i></div>
                                    @endif
                                    <a href="{{ route('show-product', $prod->id) }}" class="content">
                                        @if ($prod->is_offer)
                                            <p class="sale">{{ $prod->discount }}% OFF</p>
                                        @endif
                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->image}}');"></div>

                                        <h3>
                                            <span class="brand">{{ $prod->name }}</span>
                                            <span class="code">#{{ $prod->code }}</span>
                                        </h3>


                                        <h4 style="height: 150px">{!! $prod->body !!}</h4>
                                        <span class="NewProduct">NEW</span>
                             @if ($prod->frozen)
                                <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                            @endif

                            @if ($prod->refrigerated)
                                 <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
                            @endif
                                        @if ($prod->discount)
                                            <p class="price">
                                                <strong>${{ $prod->price - $prod->price * ($prod->discount / 100) }}</strong>
                                                <span><del>${{ $prod->price }}</del></span>
                                            </p>
                                        @else
                                            <p class="price"><strong>${{ $prod->price }}</strong></p>
                                        @endif
                                    </a>
@if(!$prod->out_stock)
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
                                    @endif
                                </div>
                            </div>

                        @endforeach
                    @endforeach
                </div>
            </div>

        </div>
    --}}
    @endif
    <!-- Brands Slider -->
    <section class="recipes-section">
        <div class="content-box">
            <h1 class="title-with-img">
                <img src="/img/chef.png">
                <div>
                    <span>Best Recipes With</span><b>Chef Wenfee</b>
                </div>
            </h1>
            <div class="recipes-box">
                    @foreach($recipes as $recipe)
                <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $recipe->recipe_image }}" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">{{$recipe->title}}</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/{{ $recipe->slug }}">View Recipe</a></footer>
                    </div>

                </div>
                @endforeach


            </div>
            <div class="ta-c">
                <a href="/recipes" class="button mbtn c2">Show All Recipes<i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
            <br><br>

                    <!------------------------ Recipes Slider ------------------------>
           <div class="Recipes-Slider">
            <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/recipes/August2021/EYl3bDoRpuMBBgfYgoza.jpg">
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Daoud Pasha</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/daoud-pasha">View Recipe</a></footer>
                    </div>
            </div>


                    <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/recipes/August2021/EYl3bDoRpuMBBgfYgoza.jpg">
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Daoud Pasha</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/daoud-pasha">View Recipe</a></footer>
                    </div>
            </div>


            <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/recipes/August2021/EYl3bDoRpuMBBgfYgoza.jpg">
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Daoud Pasha</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/daoud-pasha">View Recipe</a></footer>
                    </div>
            </div>


            <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/recipes/August2021/EYl3bDoRpuMBBgfYgoza.jpg">
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Daoud Pasha</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/daoud-pasha">View Recipe</a></footer>
                    </div>
            </div>


            <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/recipes/August2021/EYl3bDoRpuMBBgfYgoza.jpg">
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Daoud Pasha</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/daoud-pasha">View Recipe</a></footer>
                    </div>
            </div>


            <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/recipes/August2021/EYl3bDoRpuMBBgfYgoza.jpg">
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Daoud Pasha</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="/recipe/preview/daoud-pasha">View Recipe</a></footer>
                    </div>
            </div>
            </div>
                </div>




                  <!------------------------ Recipes Slider ------------------------>

                {{-- <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="/img/thumb_rec2.jpg" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">A Greek Mosakaa</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="#">View Recipe</a></footer>
                    </div>
                </div>

                <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="/img/thumb_rec3.jpg" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Pasta flora with berries</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">20</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">4-6</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">
                            There’s no better way to celebrate May being National Strawberry Month than by sharing a sweet
                            treat
                            with your pup!!! Strawberries...</p>
                        <footer class="content__footer"><a href="#">View Recipe</a></footer>
                    </div>
                </div>
            </div> --}}

        </div>
    </section>



     <!-- shipping box -->
     <section id="ShippingBox">
	<figure>
    <i class="fas fa-times" id="Close_Shipping_Box"></i>
    <figcaption>
      <h3>
      Welcome To WenFee
      </h3>
            <span>
            Check here for information about New Services
            <br>
                           <a class="button" href="#pop-up">Transport Service</a>
            <br>
                           <a class="button" href="#pop-up2">Rental Truck with a Driver</a>

         </span>

    <figcaption>
  </figure>
</section>

<!--pop-up1-->
<div class="pop-up" id="pop-up">
    <div class="pop-up__content">
      <a class="pop-up__close" href="#container"><i class="fas fa-times"></i></a>
    </div>
  </div>

  <!--pop-up2-->
  <div class="pop-up" id="pop-up2">
    <div class="pop-up__content2">
      <a class="pop-up__close" href="#container"><i class="fas fa-times"></i></a>
    </div>
  </div>

    <!-- shipping box -->
    <!-- adding to cart alert -->
<div class="alert hide">
  <span class="fas fa-exclamation-circle"></span>
  <span class="msg">You added Product to your shopping cart.</span>
  <div class="close-btn">
    <span class="fas fa-times"></span>
  </div>
</div>

    <!-- adding to cart alert -->


    <style>

        .BrandsSlider .slick-slide{
            height: 235px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .slick-slide img {
            width: 100%;
            height: auto;

        }
        .slick-dots li.slick-active button:before{
        color: #007B70;
        }
        .slick-dots li button::before
        {
        font-size: 12px;
        }
        .slick-slide img
        {
            width : 100% ;
        }
        .slick-next:before, .slick-prev:before
        {
            color:#007B70;
            font-size:24px;
        }
        @media  (max-width: 600px) {
            .slick-next:before
        {
            position: absolute;
            right: 15px;
        }
            .slick-prev:before
            {
                position: absolute;
                left: 15px;
            }
        }



    </style>
    <script>
         $('.BrandsSlider').slick(
                    {
                    slidesToShow : 5 ,
                    slidesToScroll : 2 ,
                    dots : false ,
                    arrows : true ,
                    autoplay : true ,
                    autoplayspeed : 2000 ,
                    infinite : true ,
                    responsive: [
                    {
                    breakpoint: 1024,
                    settings: {
                    slidesToShow : 3 ,
                    slidesToScroll : 3 ,
                    dots : false ,
                    arrows : true ,
                    autoplay : true ,
                    autoplayspeed : 2000 ,
                    infinite : true ,
                    }
                    },

                    {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                    },
                    {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                    }
                ]
                    }
                );
                $('.Recipes-Slider').slick(
                    {
                    slidesToShow : 3 ,
                    slidesToScroll : 3 ,
                    dots : false ,
                    arrows : true ,
                    autoplay : true ,
                    autoplayspeed : 2000 ,
                    infinite : true ,
                    responsive: [
                    {
                    breakpoint: 1024,
                    settings: {
                    slidesToShow : 2 ,
                    slidesToScroll : 2 ,
                    dots : false ,
                    arrows : true ,
                    autoplay : true ,
                    autoplayspeed : 2000 ,
                    infinite : true ,
                    }
                    },

                    {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                    },
                    {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                    }
                ]
                    }
                );
                $(".home-slick").slick({
                fade: true,
                autoplay: true,
                autoplaySpeed: 4000,
                pauseOnHover: false
            });

            $(window).scroll(function(event) {
                var scroll = $(window).scrollTop();
                if (scroll > 100) {
                    $(".nav").addClass("is-scrolled");
                } else {
                }
            });

            $(".nav").removeClass("is-scrolled");

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
            {{-- comment

            $('#products_view').load("../../../../../get_p/" +{{$slideCategory->id}}); --}}
    </script>

@endsection
