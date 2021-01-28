<form action="<?php echo e(route("job.search")); ?>" class="form " method="get">
    <div class="g-field-search">
        <input type="text" 
            <?php if( !empty(Request::query('s')) ): ?> 
                value="<?php echo e(Request::query('s')); ?>"
            <?php endif; ?>
        class="form-control input-job-search" name="s"
        placeholder="Enter job title, position, skills..." >
        <button class="btn btn-primary btn-search" type="submit" ><?php echo e(__("Search")); ?></button>
    </div>
</form><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/search/form-search.blade.php ENDPATH**/ ?>