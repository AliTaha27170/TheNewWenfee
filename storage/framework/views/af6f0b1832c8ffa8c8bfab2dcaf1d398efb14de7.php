

<?php $__env->startSection('content'); ?>
    <div class="recipes-page">

        <h1 class="title-with-img">
            <img src="/img/chef.png">
            <div>
                <span>Best Recipes With</span><b>Chef Wenfee</b>
            </div>
        </h1>
        <div class="row">
            
                <div class="col-md-12">
                    <div class="right-panel">

                        <div class="recipes-box">
                            <?php if($recipes): ?>
                                <?php $__currentLoopData = $recipes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="<?php echo e(Voyager::image($item->recipe_image)); ?>" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title"><?php echo e($item->title); ?></h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value"><?php echo e($item->preparation_time); ?></span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value"><?php echo e($item->serving_range); ?></span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description"><?php echo e($item->short_desc); ?></p>
                        <footer class="content__footer"><a href="<?php echo e(route('recipe-preview',$item->slug)); ?>">View Recipe</a></footer>
                    </div>
                </div> 
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                            <?php echo e($recipes->links()); ?>




                        </div>

                    </div>
                </div>
            </div>
        </div>

        
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\adham\resources\views/recipes.blade.php ENDPATH**/ ?>