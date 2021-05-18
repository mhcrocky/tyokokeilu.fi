<div class="bravo-list-job">
    <div class="container">
        <?php if($title): ?>
        <div class="title">
            <?php echo e($title); ?>

        </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-md-9 cards p-0">
                <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-xl-6 float-left">
                    <?php echo $__env->make('Job::frontend.layouts.search.loop-list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <div class="col-md-3">
                <a href="<?php echo e($ads_link); ?>" target="_blank" style="text-decoration: none;">
                    <div class="card ads-iamge">
                        <?php if($ads_iamge): ?>
                            <img src="<?php echo e($ads_iamge); ?>" alt="">
                        <?php endif; ?>
                    </div>
                </a>
                <div class="daily">
                    <div class="mount">+148</div>
                    <div class="txt">
                        Daily jobs :
                        <a href="#">Explore more <i class="fa fa-chevron-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Job/Views/frontend/blocks/list-job/index.blade.php ENDPATH**/ ?>