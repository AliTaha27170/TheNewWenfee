<div class="sticky-top">
  <nav class="navbar">
    <div class="container-fluid">
      <form class="d-flex" action="<?php echo e(route('magic_search')); ?>" method="POST" id="Navbar_Search">
        <?php echo csrf_field(); ?>
        <input class="form-control me-2" type="search" placeholder="Search" name="search" aria-label="Search">
        <button id="Nav_Bar_Search_Button" class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
      </form>

      <?php if(isset(auth()->user()->id)): ?>

      <div class="Username">



<a href="<?php echo e(route('Fav')); ?>">
<span>
Favorite List
  <i class="fas fa-heart" style="padding: 0 5px;"></i>
 </span> </a>
        <span style="color: #fff;padding: 0 5px;">|</span>
        <a href="#" class="FirstNavLinks"><?php echo e(auth()->user()->name); ?></a>
    <div class="User-area">
        <div class="User-avtar">
        <i class="fas fa-user User-Icon"></i>
        </div>
        <form method="POST" action="<?php echo e(route('logout')); ?>">
<?php echo csrf_field(); ?>
          <ul class="User-Dropdown">
            <li><a href="#">Edit Profile</a><i class="fas fa-cog"></i></li>
            <li  id="Fav_Mobile"><a href="<?php echo e(route('Fav')); ?>">Favorite List</a><i class="fas fa-heart"></i></li>

            <li  id="logout"><a href="#">Logout </a><i class="fas fa-sign-out-alt"></i></li>
            <button id="logout_btn" hidden></button>
        </form>
          </ul>
      </div>

      </div>

      <?php else: ?>
      <div class="Registration">
        <a href="/login" class="FirstNavLinks">Login</a>
        <span id="NavSpan">|</span>
        <a href="/register" class="FirstNavLinks">Register</a>
        <i class="fas fa-user User-Icon"></i>
      </div>
      <?php endif; ?>
    </div>

  </nav>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light ">
    <a class="navbar-brand" href="../../../../">WenFee</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mobile_nav" aria-controls="mobile_nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mobile_nav">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0 float-md-right">
      </ul>
      <ul class="navbar-nav navbar-light">
        <!--========-->

        <li class="nav-item dropdown megamenu-li dmenu">
          <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Our Categories</a>
          <div class="dropdown-menu megamenu sm-menu border-top" aria-labelledby="dropdown01">

            <div class="row">

              <?php $__currentLoopData = $cats; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($category->name!="Grocery & Gourmet Foods" and $category->name!="Cook Books"): ?>

              <div class="col-sm-6 col-lg-3 border-right mb-4">
                <h6><?php echo e($category->name); ?></h6>
                <?php if(count($category->children) > 0): ?>
                <?php $__currentLoopData = $category->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a class="dropdown-item" href="<?php echo e(route('view-category', $child->slug)); ?>"> <?php echo e($child->name); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                <a class="dropdown-item" href="<?php echo e(route('view-category', $category->slug)); ?>"> <?php echo e($category->name); ?></a>
                <?php endif; ?>


              </div>


              <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
          </div>
        </li>
        <!--=========-->

        <!--========-->
        <li class="nav-item dropdown megamenu-li dmenu">
          <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Grocery & Gourmet Foods</a>
          <div class="dropdown-menu megamenu sm-menu border-top" aria-labelledby="dropdown01">
            <div class="row">

              <?php if($cats): ?>
              <?php $__currentLoopData = $cats; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($item_->name=="Grocery & Gourmet Foods"): ?>
              <?php $__currentLoopData = $item_->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>


              <div class="col-sm-6 col-lg-3 border-right mb-4">
                <h6><?php echo e($item1->name); ?></h6>
                <?php if(count($item1->children) > 0): ?>
                <?php $__currentLoopData = $item1->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a class="dropdown-item" href="<?php echo e(route('view-category', $item2->slug)); ?>"> <?php echo e($item2->name); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                <a class="dropdown-item" href="<?php echo e(route('view-category', $item1->slug)); ?>"> <?php echo e($item1->name); ?></a>
                <?php endif; ?>


              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php break; ?>
              <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
            </div>
          </div>
        </li>
        <!--=========-->
        <li class="nav-item"><a class="nav-link" href="../.../../all?offer=on">Our Offers</a></li>
        <li class="nav-item"><a class="nav-link" href="<?php echo e(route('brands')); ?>">Brands</a></li>
        <li class="nav-item"><a class="nav-link" href="<?php echo e(route('recipes')); ?>">Recipes</a></li>
        
      </ul>
    </div>




    <!-- Basket   -->

    <div id="cd-cart-trigger">
      <a class=""></a>
      <a href="#0" class="Shopping-cart">
        <i class="fas fa-shopping-cart"></i><small></small><span class="PurchaseValue" id="total"> $ <?php echo e(isset($_COOKIE['total'] ) ? $_COOKIE['total'] : '0'); ?></span>

      </a>
      <span class="total-qty">1</span>
    </div>

    <!-- Basket -->
  </nav>



</div>
<!-- End Of Navbar -->




<div id="cd-shadow-layer"></div>

<div id="cd-cart">

</div> <!-- cd-cart -->





<!--_____________________________________________________________________-->

<script src="<?php echo e(asset('js/Navbar.js')); ?>   "></script>
<script src="<?php echo e(asset('js/jquery.js')); ?>   "></script>
<script src="<?php echo e(asset('js/bootstrap.js')); ?>"></script>
<script>
  $('#cd-cart-trigger').click(
    function() {
      $('#cd-cart').load("<?php echo e(route('maincart')); ?>");
    }
  );

  //logout
  $("#logout").click(function(){
    $("#logout_btn").trigger("click");
 })

</script>
<?php /**PATH C:\wamp64\www\adham\resources\views/partials/nav-menu.blade.php ENDPATH**/ ?>