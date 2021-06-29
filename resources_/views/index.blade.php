@extends('layouts.app')

@section('content')
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>



    <!--_____________________________________________________________________-->

    <div class="carousel">
    
      <div class="slide">
    
        <img src="https://wenfee.com/Slides/LaodiceaOlive.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
      <div class="slide">
        <img src="https://wenfee.com/Slides/LaodiceaSpices.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
        <div class="slide">
    
        <img src="https://wenfee.com/Slides/AlshamNjomea.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
        <div class="slide">
    
        <img src="https://wenfee.com/Slides/AlshamFlafel.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
        <div class="slide">
    
    
        <img src="https://wenfee.com/Slides/ShamraCake.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
        <div class="slide">
    
        <img src="https://wenfee.com/Slides/BabyFoods.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
    
     
     
    </div>
    
    <!--_____________________________________________________________________-->
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
                <img  src="https://i.ibb.co/qBTxBzZ/iconfinder-address-shipping-4301321.png" style="width: 36px">
                <div>
                    <h1> Shipping</h1>
                    <p>Get a Safety Shipping Process By Land or Sea.</p>
                </div>
            </li>
            <li>
                <img src="/img/features/cart.svg">
                <div>
                    <h1> Best Products Ever </h1>
                    <p>Start Shopping for Your Favorite Products.</p>
                </div>
            </li>
        </ul>
    </div>

    <div class="top-cats-box">
        <div class="tcb-box" style="background-image: url('/img/cats/cat1-min.jpg')">
            <div class="content">
                <h1>Dairy Products</h1>
                <a href="/category/cheese" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>
        <div class="tcb-box dark" style="background-image: url('/img/cats/cat2-min.jpg')">
            <div class="content">
                <h1>Best<br>Bakery</h1>
                <a href="/category/bread" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>
        
        
        <div class="tcb-box" style="background-image: url('/img/cats/cat3-min.jpg')">
            <div class="content">
                <h1>Fresh Vegetables</h1>
                <a href="/category/dried-fruit-and-dates" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>
        
    </div>

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

            <div class="products">
                <div class="grid">
                    @foreach ($slideCategories as $item)
                        @foreach ($item->products as $prod)
                            <div class="{{ $item->slug }} filter-item">
                                <div class="item">
                                    <button class="fav-btn"><i class="fi fi-rr-heart"></i></button>
                                    <div class="FrozenProduct"><i class="fas fa-snowflake"></i></div>
                                    <div class="RefrigeratedProduct"><i class="fas fa-refrigerator"></i></div>
                                    <a href="{{ route('show-product', $prod->id) }}" class="content">
                                        @if ($prod->is_offer)
                                            <p class="sale">{{ $prod->discount }}% OFF</p>
                                        @endif
                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/strorge/{{ $prod->image}}');"></div>

                                        <h3>
                                            <span class="brand">{{ $prod->name }}</span>
                                            <span class="code">#{{ $prod->code }}</span>
                                        </h3>
                                      
                                
                                        <h4 style="height: 150px">{!! $prod->body !!}</h4>

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
                            </div>
                        @endforeach
                    @endforeach
                </div>
            </div>
        </div>
    @endif
{{-- comment 

    <section class="albums-home-box">
        <div class="slider-title">
            <h1>Discover the most <span>delicious dishes</span> <b>around the world</b></h1>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-8">
                <div class="albums-home-slider">
                    @if ($books)
                        @foreach ($books as $book)
                            <div>
                                <a href="{{ route('show-product', $book->slug) }}" class="cook-item"
                                    style="background-image: url('{{ Voyager::image($book->image) }}');">
                                    <div class="content">
                                        <span class="auther">{{ $book->cookbook_author }}</span>
                                        <h1>{{ $book->name }}</h1>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>

        </div>

    </section>

    <section class="recipes-section">
        <div class="content-box">

            <h1 class="title-with-img">
                <img src="/img/chef.png">
                <div>
                    <span>Best Recipes With</span><b>Chef Wenfee</b>
                </div>
            </h1>
            <div class="recipes-box">
                <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="/img/thumb_rec1.jpg" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">Fried Kebbeh</h2>
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
            </div>

            <div class="ta-c">
                <a href="#" class="button mbtn c2">Show All Recipes<i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>
    </section>
--}}
    <script>
        $(document).ready(function() {

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
            
        })

    </script>

@endsection
