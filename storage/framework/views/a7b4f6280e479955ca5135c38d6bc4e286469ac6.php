<div class="block-form-search-job" style="padding:30px 0px">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-heading text-head-cus"><?php echo e($title); ?></h1>
                <div class="g-form-control">
                    <?php echo $__env->make('Job::frontend.layouts.search.form-search', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>               
            </div>
        </div>
    </div>
</div>
<style>
.text-head-cus{
    color: black;
    font-size:40px;
}
.sub-head-cus{
    color: black;
    position:relative;
    top:-40px
}
</style><?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Job/Views/frontend/blocks/form-search-job/index.blade.php ENDPATH**/ ?>