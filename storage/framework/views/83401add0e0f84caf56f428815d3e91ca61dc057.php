<form action="<?php echo e(route("job.search")); ?>" class="form " method="get">
    <div class="g-field-search">
        <i class="fa fa-search input-job-search-icon"></i>
        <input type="text" 
            <?php if( !empty(Request::query('s')) ): ?> 
                value="<?php echo e(Request::query('s')); ?>"
            <?php endif; ?>
        class="form-control input-job-search" name="s"
        placeholder="Enter job title, position, skills..." >
        <button class="btn btn-primary btn-search" type="submit" ><?php echo e(__("Search")); ?></button>
    </div>
</form><?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/layouts/search/form-search.blade.php ENDPATH**/ ?>