<div class="row iierw">
    <div class="col-lg-3 col-md-12">
        <div class="col-md-12 filter-heading">FILER JOBS</div>
        <?php echo $__env->make('Job::frontend.layouts.search.filter-search', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
    <div class="col-lg-9 col-md-12">
        <?php echo $__env->make('Job::frontend.layouts.search.main-listitem', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH D:\Task\job\modules/Job/Views/frontend/layouts/search/list-item.blade.php ENDPATH**/ ?>