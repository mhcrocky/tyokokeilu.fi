<form action="<?php echo e(route("job.search")); ?>" class="form " method="get">
    <button class="btn btn-primary btn-search" type="submit" ><?php echo e(__("Find Job")); ?></button>
    <div class="g-field-search">
        <i class="fa fa-search input-job-search-icon"></i>
        <input type="text" 
        <?php if( !empty(Request::query('s')) ): ?> 
        value="<?php echo e(Request::query('s')); ?>"
        <?php endif; ?>
        class="form-control input-job-search" name="s"
        placeholder="Job tittle or keyword" >
        <div class="input-placefolder">
            <i class="fas fa-user mr-2"></i>
            <span>City, state or zip</span>
        </div>
    </div>
</form><?php /**PATH /home/znwaqgrx/public_html/modules/Job/Views/frontend/layouts/search/form-search.blade.php ENDPATH**/ ?>