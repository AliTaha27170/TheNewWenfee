@extends('layouts.app')

@section('content')
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>

    <!--_____________________________________________________________________-->

    <div class="carousel">
    
      <div class="slide">
    
        <img src="https://wenfee.com/Slides/1.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
      <div class="slide">
        <img src="https://wenfee.com/Slides/2.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
        <div class="slide">
    
        <img src="https://wenfee.com/Slides/3.jpg" class="background-image" alt="Small succulent in round planter">
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
    
        <img src="https://wenfee.com/Slides/7.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
      
      <div class="slide">
    
        <img src="https://wenfee.com/Slides/8.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
         
      <div class="slide">
    
        <img src="https://wenfee.com/Slides/9.jpg" class="background-image" alt="Small succulent in round planter">
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
                    <h1> Mediterranean Products </h1>
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
                <h1>Bread &<br>Bakery</h1>
                <a href="/category/bread" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
            </div>
        </div>
        
        
        <div class="tcb-box" style="background-image: url('/img/nuts.jpg')">
            <div class="content">
                <h1>Raw Nuts & Seeds</h1>
                <a href="/category/raw-nuts-and-seeds" class="mbtn">Shop Now <i class="fi fi-rr-arrow-small-right"></i></a>
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
                                      
                                
                                        <h4 style="height: 150px">{!! $prod->body !!}
                                        <span class="NewProduct">NEW</span>
                                        <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div></h4>
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
    <!-- Brands Slider -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <style>
        .slick-dots li.slick-active button:before{
        color: #007B70;
        }
        .slick-dots li button::before
        {
        font-size: 12px;
        }
    </style>
    <section class="BrandsSection">
        <h2>Our Brands</h2>
    <div class="BrandsSlider">
        <div class="Brands-item">
            <a href="#">
                <img src="https://trademarks.justia.com/media/og_image.php?serial=87185929" alt="BrandLogo">
            </a>
        </div>
        <div class="Brands-item">
            <a href="#">
                <img src="https://trademarks.justia.com/media/og_image.php?serial=87185929" alt="BrandLogo">
            </a>
        </div>
        <div class="Brands-item">
            <a href="#">
                <img src="https://trademarks.justia.com/media/og_image.php?serial=87185929" alt="BrandLogo">
            </a>
        </div>
        <div class="Brands-item">
            <a href="#">
                <img src="https://trademarks.justia.com/media/og_image.php?serial=87185929" alt="BrandLogo">
            </a>
        </div>
        <div class="Brands-item">
            <a href="#">
                <img src="https://trademarks.justia.com/media/og_image.php?serial=87185929" alt="BrandLogo">
            </a>
        </div>
        <div class="Brands-item">
            <a href="#">
                <img src="https://trademarks.justia.com/media/og_image.php?serial=87185929" alt="BrandLogo">
            </a>
        </div>
            </div>
            </section>         
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
            <script>
                $('.BrandsSlider').slick(
                    {
                    slidesToShow : 4 ,
                    slidesToScroll : 2 ,
                    dots : true ,
                    arrows : true ,
                    autoplay : true ,
                    autoplayspeed : 2000 ,
                    infinite : true 
                    }
                );

            </script>
    <!-- Brands Slider -->

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

     <!-- shipping box -->
     <section id="ShippingBox">
	<figure>
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