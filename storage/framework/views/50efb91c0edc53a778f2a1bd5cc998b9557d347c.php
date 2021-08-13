


<?php $__env->startSection('content'); ?>
<?php
use     App\hellpers\like_;
?>

<script>
    var x=0;
</script>
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>

    
    <!--_____________________________________________________________________-->

    <div class="carousel">
    
        <!--
      <div class="slide">
    
        <img src="https://wenfee.com/Slides/1.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    -->
      <div class="slide">
        <img src="https://wenfee.com/Slides/2.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    
      <!-- 
        <div class="slide">
    
        <img src="https://wenfee.com/Slides/3.jpg" class="background-image" alt="Small succulent in round planter">
      </div>
    -->

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

    <div class="features-box">
        <ul>
           
            
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

    <?php if($slideCategories): ?>
        <div class="filter-box">
            <div class="filter-head">
                <ul>
                    <?php $__currentLoopData = $slideCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li><button class="mbtn" onclick="filter('.<?php echo e($item->slug); ?>', this)"><?php echo e($item->name); ?></button>
                        </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                    <?php $__currentLoopData = $slideCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php $__currentLoopData = $item->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="<?php echo e($item->slug); ?> filter-item">
                                <div class="item">
                                    <a  class="fav-btn"><i class="<?php echo e((isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart'); ?>"    

                                        <?php if(isset(auth()->user()->id) and like_::check($item->id)): ?>
                                        onclick="unLike(this,<?php echo e($prod->id); ?>)"
                                        <?php else: ?>
                                        onclick="like(this,<?php echo e($prod->id); ?>)"

                                        <?php endif; ?>
                                        
                                        ></i><!--class="fas fa-heart"--></a>
                                    <div class="RefrigeratedProduct"><i class="fas fa-refrigerator"></i></div>
                                    <a href="<?php echo e(route('show-product', $prod->id)); ?>" class="content">
                                        <?php if($prod->is_offer): ?>
                                            <p class="sale"><?php echo e($prod->discount); ?>% OFF</p>
                                        <?php endif; ?>
                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/strorge/<?php echo e($prod->image); ?>');"></div>

                                        <h3>
                                            <span class="brand"><?php echo e($prod->name); ?></span>
                                            <span class="code">#<?php echo e($prod->code); ?></span>
                                        </h3>
                                      
                                
                                        <h4 style="height: 150px"><?php echo $prod->body; ?>

                                        <span class="NewProduct">NEW</span>
                                        <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div></h4>
                                        <?php if($prod->discount): ?>
                                            <p class="price">
                                                <strong>$<?php echo e($prod->price - $prod->price * ($prod->discount / 100)); ?></strong>
                                                <span><del>$<?php echo e($prod->price); ?></del></span>
                                            </p>
                                        <?php else: ?>
                                            <p class="price"><strong>$<?php echo e($prod->price); ?></strong></p>
                                        <?php endif; ?>
                                    </a>

                                    <div class="cart-pr">
                                        <div class="cart">
                                            <a  class="add-cart-btn"  onclick="add_to_cart_main(<?php echo e($prod->ac_id); ?>,<?php echo e($prod->id); ?>);" href="javascript:void(0);">
                                                <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                                Add to cart</a>
                                            <div class="counter">
                                                <button type="button" class="minus-btn"><img
                                                        src="<?php echo e(asset('img/minus.svg')); ?>"></button>
                                                <input readonly name="qty" type="text" value="1" id="qty<?php echo e($prod->id); ?>">
                                                <button type="button" class="plus-btn"><img
                                                        src="<?php echo e(asset('img/plus.svg')); ?>"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
            <div  class="container ViewAllButton" >
            <a href="#">View all</a>
            </div>
        </div>
    <?php endif; ?>
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
    
    <section class="container BrandsSection">
        <h2>Our Brands</h2>
    <div class="BrandsSlider">
        <?php $__currentLoopData = $brands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="Brands-item">
            <a href="/brand/<?php echo e($brand->slug); ?>">
                <img src="https://wenfee.com/strorge/<?php echo e($brand->logo); ?>" alt="BrandLogo">
            </a>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        
            </div>
            </section>         
        
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
            <script>
                $('.BrandsSlider').slick(
                    {
                    slidesToShow : 5 ,
                    slidesToScroll : 2 ,
                    dots : true ,
                    arrows : true ,
                    autoplay : true ,
                    autoplayspeed : 2000 ,
                    infinite : true ,
                    responsive: [
                    {
                    breakpoint: 1024,
                    settings: {
                    slidesToShow : 5 ,
                    slidesToScroll : 2 ,
                    dots : true ,
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

            </script>
    <!-- Brands Slider -->
<!--  
    <section class="albums-home-box">
        <div class="slider-title">
            <h1>Discover the most <span>delicious dishes</span> <b>around the world</b></h1>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-8">
                <div class="albums-home-slider">
                    <?php if($books): ?>
                        <?php $__currentLoopData = $books; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $book): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div>
                                <a href="<?php echo e(route('show-product', $book->slug)); ?>" class="cook-item"
                                    style="background-image: url('<?php echo e(Voyager::image($book->image)); ?>');">
                                    <div class="content">
                                        <span class="auther"><?php echo e($book->cookbook_author); ?></span>
                                        <h1><?php echo e($book->name); ?></h1>
                                    </div>
                                </a>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
            </div>

        </div>

    </section>
-->
  
    <section class="recipes-section">
        <div class="content-box">
            <h1 class="title-with-img">
                <img src="/img/chef.png">
                <div>
                    <span>Best Recipes With</span><b>Chef Wenfee</b>
                </div>
            </h1>
            <div class="recipes-box">
                    <?php $__currentLoopData = $recipes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $recipe): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="<?php echo e(Voyager::image($recipe->recipe_image)); ?>" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title"><?php echo e($recipe->title); ?></h2>
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
                        <footer class="content__footer"><a href="/recipe/preview/<?php echo e($recipe->slug); ?>">View Recipe</a></footer>
                    </div>
                  
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                

                

            <div class="ta-c">
                <a href="/recipes" class="button mbtn c2">Show All Recipes<i class="fi fi-rr-arrow-small-right"></i></a>
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




<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\adham\resources\views/index.blade.php ENDPATH**/ ?>