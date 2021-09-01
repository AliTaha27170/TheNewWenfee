<?php header('Access-Control-Allow-Origin: *'); ?>
<!doctype html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

    
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wenfee</title>
        <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-v4-grid-only@1.0.0/dist/bootstrap-grid.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel='stylesheet' href="<?php echo e(asset('libs/slick/slick.css')); ?>" />
        <link rel='stylesheet' href="<?php echo e(asset('libs/slick/slick-theme.css')); ?>" />
        <link rel="stylesheet" href="<?php echo e(asset('libs/fi/css/uicons-regular-rounded.css')); ?>">
        <link rel="stylesheet"  href="<?php echo e(asset('css/bootstrap.css')); ?> ">
        <link rel="stylesheet" href="<?php echo e(asset('css/recipes.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(asset('fonts/fonts.css')); ?>">
        <link rel='stylesheet' href="<?php echo e(asset('css/add.css')); ?>" />
        <link rel='stylesheet' href="<?php echo e(asset('css/style.css')); ?>?v=3" />
        <?php echo $__env->yieldPushContent('styles'); ?>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="<?php echo e(asset('js/ac.js')); ?>"></script>
        <script src="<?php echo e(asset('js/main.js')); ?>"></script>

        
        <link rel="stylesheet" href="<?php echo e(asset('css/Navbar.css')); ?> ">

        
    </head>
</head>

<body class="is-loading">
    <div class="loading-box">
        <div class="content">
            <img src="/img/logo.png" alt="">
            <p><img src="/img/loading.gif" alt="">&nbsp;&nbsp;Loading...</p>

        </div>
    </div>

    <div id="app">
        <?php echo $__env->make('partials.nav-menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->make('partials.inc.messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->yieldContent('content'); ?>
        <?php echo $__env->make('partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <script type="text/javascript" src="https://www.viralpatel.net/demo/jquery/jquery.shorten.1.0.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="<?php echo e(asset('libs/slick/slick.js')); ?>"></script>
    <script src="<?php echo e(asset('js/scripts.js')); ?>?v=2"></script>
    <script>

        function like (e,id)
        {
      

            <?php if(!(isset(auth()->user()->id))): ?>

            return alert('You must login first ! ');
                
            <?php endif; ?>



            $.get("../../../like/"+id, function(data, status){
                $(e).removeClass('fi fi-rr-heart');
                $(e).addClass(' fas fa-heart ');
                $(e).attr("onclick","unLike(this," + id + ")");

            });

        }

        function unLike (e,id)
        {


            $.get("../../../unLike/"+id, function(data, status){
                
                 $(e).removeClass(' fas fa-heart ');
                 $(e).addClass('fi fi-rr-heart');
                 $(e).attr("onclick","like(this," + id + ")");

            });

        }

        
    </script>


   
    

    <script>
        function getProducts(id) {
            $('#products_view').load("../../../../../get_p/" +id);
        }
        

          </script>
      

    
    <?php echo $__env->yieldPushContent('scripts'); ?>

 
</body>

</html>
<?php /**PATH C:\wamp64\www\adham\resources\views/layouts/app.blade.php ENDPATH**/ ?>