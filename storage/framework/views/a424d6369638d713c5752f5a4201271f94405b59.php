

<?php $__env->startSection('content'); ?>
<?php
use     App\hellpers\like_;
?>
    <link rel="stylesheet" href="/css/wrunner-default-theme.css">
    <script src="/libs/wrunner/wrunner-native.js"></script>

    <div class="product-page">
        <div class="row">

            <div class="col-md-3">
                <form id="search-form" action="<?php echo e(route('viewall')); ?>" method="GET">

                    <div class="left-panel">
                        <h2>Category</h2>
                        <div class="select">
                            <select name="slug">
                                <option value="">All Categories</option>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if(request()->slug): ?>
                                        <option value="<?php echo e($item->slug); ?>"
                                            <?php echo e($item->slug == request()->slug ? 'selected' : ''); ?>><?php echo e($item->name); ?>

                                        </option>
                                    <?php else: ?>
                                        <option value="<?php echo e($item->slug); ?>"><?php echo e($item->name); ?></option>
                                    <?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </select>
                            <div class="select__arrow"></div>
                        </div>

                        <h2>Price</h2>
                        <input hidden name="maxPrice" value="<?php echo e(request()->maxPrice ? request()->maxPrice : 100); ?>"
                            type="text" id="maxPrice">
                        <input hidden name="minPrice" value="<?php echo e(request()->minPrice ? request()->minPrice : 0); ?>"
                            type="text" id="minPrice">

                        <div class="my-js-slider"></div>
                        <br>
                        <h2>Offer/Discount </h2>
                        <input type="checkbox" name="offer" <?php echo e(request()->offer ? 'checked' : ''); ?> id="box-1">
                        <label for="box-1">Offer</label>
                        <h2>Is frozen </h2>
                        <input type="checkbox" name="frozen" <?php echo e(request()->frozen ? 'checked' : ''); ?> id="box-2">
                        <label for="box-2">frozen</label>
                        <h2>Is refrigerated </h2>
                        <input type="checkbox" name="refrigerated" <?php echo e(request()->refrigerated ? 'checked' : ''); ?> id="box-3">
                        <label for="box-3">refrigerated</label>
                    </div>
                </form>
            </div>

            <div class="col-md-9">
                <div class="container Number-Of-Products">
                  <span></span>
                </div>
                <div class="right-panel">
                    <div class="products">
                        <div class="grid">
                            <?php if($products->count() > 0): ?>
                                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="item">
                                    <a  class="fav-btn"><i class="<?php echo e((isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart'); ?>"

                                        <?php if(isset(auth()->user()->id) and like_::check($item->id)): ?>
                                        onclick="unLike(this,<?php echo e($prod->id); ?>)"
                                        <?php else: ?>
                                        onclick="like(this,<?php echo e($prod->id); ?>)"


                                        <?php endif; ?>

                                        ></i><!--class="fas fa-heart"--></a>                                    <a href="<?php echo e(route('show-product', $prod->id)); ?>" class="content">
                                        <?php if($prod->is_offer and isset($prod->discount) ): ?>
                                            <p class="sale"><?php echo e($prod->discount); ?>% OFF</p>
                                            <?php elseif($prod->is_offer): ?>
                                            <small class="sale">Free Shipping</small>
                                        <?php endif; ?>
                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/<?php echo e($prod->image); ?>')"></div>

                                        <h3>
                                            <span class="brand"><?php echo e($prod->name); ?></span>
                                            <span class="code">#<?php echo e($prod->code); ?></span>
                                        </h3>
                                        <h4 style="height: 192px"><?php echo $prod->body; ?>

                                        <span class="NewProduct">NEW</span>
                             <?php if($prod->frozen): ?>
                                <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                            <?php endif; ?>

                            <?php if($prod->refrigerated): ?>
                                 <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
                            <?php endif; ?>
                                    </h4>

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
                                            <a
                                            <?php if($prod->call_for_price): ?>
                                            class="callforprice" href="<?php echo e(route('contact')); ?>"
                                        <?php elseif($prod->out_of_stock): ?>
                                        class="outofstock"
                                        <?php else: ?>
                                        class="add-cart-btn"  onclick="add_to_cart_main(<?php echo e($prod->ac_id); ?>,<?php echo e($prod->id); ?>);" href="javascript:void(0);"
                                        <?php endif; ?>
                                            >
                                            <?php if($prod->call_for_price): ?>
                                                <span> call for price </span>
                                        <?php elseif($prod->out_of_stock): ?>
                                             <span> Out of stock </span>
                                        <?php else: ?>
                                        <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                        Add to cart
                                                    <?php endif; ?>


                                            </a>
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
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            <?php endif; ?>

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
  z-index: 400;
}
@media  (max-width: 1000px) {
  .alert
   {
    width: 100%;
  }
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
<?php $__env->stopSection(); ?>

<?php $__env->startPush('styles'); ?>
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
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\adham\resources\views/viewall.blade.php ENDPATH**/ ?>