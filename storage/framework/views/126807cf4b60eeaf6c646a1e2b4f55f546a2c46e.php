<form action="<?php echo e(route("job.search")); ?>" class="form " method="get">
    <div class="g-field-search">
        <input type="text" 
            <?php if( !empty(Request::query('s')) ): ?> 
                value="<?php echo e(Request::query('s')); ?>"
            <?php endif; ?>
        class="form-control" name="s" style="border-radius: 50px;padding:2.0rem 160px 2.0rem 3.5rem;">
        <button class="btn btn-primary btn-search" type="submit" style="border-radius: 44px;width: 150px;top: -58px;position: relative;left: calc( 100% - 158px);height: 50px;"><?php echo e(__("Search")); ?></button>
    </div>
</form><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/search/form-search.blade.php ENDPATH**/ ?>