<div class="bravo-list-job">
    <div class="container">
        <?php if($title): ?>
        <div class="title">
            <?php echo e($title); ?>

        </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-md-9 cards row">
                <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div style="max-width: 48%" class="col-md-6 mr-3">
                        <?php echo $__env->make('Job::frontend.layouts.search.loop-list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <div class="col-md-3">
                <?php if($ads_txt): ?>
                    <span class="ads-text-span"><?php echo e($ads_txt); ?></span>
                <?php endif; ?>
                <a href="<?php echo e($ads_link); ?>" target="_blank" style="text-decoration: none;">
                    <div class="card ads-iamge">
                    <?php if($ads_iamge): ?>
                        <img src="<?php echo e($ads_iamge); ?>" alt="">
                    <?php endif; ?>
                </div>
                </a>
            </div>
        </div>
    </div>
</div><?php /**PATH D:\jobportal.sql\modules/Job/Views/frontend/blocks/list-job/index.blade.php ENDPATH**/ ?>