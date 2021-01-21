<?php echo $__env->make('Job::frontend.layouts.details.banner', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="container">
    <?php echo $__env->make('Job::frontend.layouts.details.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php if($translation->content): ?>
        <div class="g-overview">   
            <h3><?php echo e(__("Description")); ?></h3>
            <div class="description">
                <?php echo $translation->content ?>
            </div>
        </div>
    <?php endif; ?>
    <?php echo $__env->make('Job::frontend.layouts.details.contact-info', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/details/job-detail.blade.php ENDPATH**/ ?>