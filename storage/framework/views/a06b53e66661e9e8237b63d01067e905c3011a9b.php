<div class="block-form-search-job" style="background: #F7F4EF;padding:30px 0px">
    <div class="container">
        <div class="row">
            <div class="col-md-7 mt-5 pt-5">
                <h1 class="text-heading text-head-cus"><?php echo e($title); ?></h1>
                <div class="g-form-control">
                    <?php echo $__env->make('Job::frontend.layouts.search.form-search', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>               
                
                <div class="sub-heading sub-head-cus"><?php printf( $sub_title, $job_count); ?></div>
            </div>
            <div class="col-md-5" style="background-image:url('/images/jobsearch.svg') !important;background-size:cover;height:500px"></div>
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
</style><?php /**PATH D:\_Work\Vargha\tyokokeilu.fi\modules/Job/Views/frontend/blocks/form-search-job/index.blade.php ENDPATH**/ ?>