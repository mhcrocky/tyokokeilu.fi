<div class="bravo_filter">
    <form action="<?php echo e(route("job.search")); ?>" class="bravo_form_filter">
        <div class="filter-title">
            <?php echo e(__("FILTER BY")); ?>

        </div>
        <?php echo $__env->make('Job::frontend.layouts.search.filter.category', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->make('Job::frontend.layouts.search.filter.location', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->make('Job::frontend.layouts.search.filter.job_type', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </form>
</div>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/search/filter-search.blade.php ENDPATH**/ ?>