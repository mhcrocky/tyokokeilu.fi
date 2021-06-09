<form action="<?php echo e(route("job.search")); ?>" class="form " method="get">
    <button class="btn btn-primary btn-search" type="submit" ><?php echo e(__("Find Job")); ?></button>
    <div class="g-field-search">
        <i class="fa fa-search input-job-search-icon"></i>
            <input type="text" 
            <?php if( !empty(Request::query('s')) ): ?> 
            value="<?php echo e(Request::query('s')); ?>"
            <?php endif; ?>
            class="form-control input-job-search col-md-5" name="s"
            placeholder="Job tittle" >
    </div>
</form><?php /**PATH D:\Task\job\modules/Job/mobile/frontend/layouts/search/form-search.blade.php ENDPATH**/ ?>