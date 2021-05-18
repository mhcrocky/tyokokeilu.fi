<?php
    $selected = (array) Request::query('location_id');
    $s_location = Request::query('s_location');
?>
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" class="s_location search" value="<?php echo e($s_location); ?>" name="s_location" placeholder="Filter by Location">
        <i class="fa fa-search" data="s_location"></i>
    </div>
    <div class="item-content">
        <ul class="s_location">
            <?php $__currentLoopData = $list_location; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$location): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li data="<?php echo e($location->name); ?>" >
                    <div class="bravo-checkbox">
                        <label>
                            <input <?php if(in_array($location->id,$selected)): ?> checked <?php endif; ?> type="checkbox" name="location_id[]" value="<?php echo e($location->id); ?>"> 
                            <?php echo e($location->name); ?>

                            <span class="checkmark"></span>
                            <span class="badge badge-primary"><?php echo e($location->job->where('status','publish')->count()); ?></span>
                        </label>
                    </div>
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
</div>
<style>
input.search{
    border: 0px;
    font-size: 1.4rem;
    width: 12rem;
    font-weight: bold;
    line-height: 23px;
    margin: 0;
}
input.search:focus{
    outline: 0px;
}
</style><?php /**PATH D:\laravel example\jobportal\modules/Job/Views/frontend/layouts/search/filter/location.blade.php ENDPATH**/ ?>