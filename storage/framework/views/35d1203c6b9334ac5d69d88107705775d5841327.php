<?php
    $selected = (array) Request::query('category_id');
?>
<div class="g-filter-item">
    <div class="item-title">
        <h3> Filter by Category </h3>

        <i class="fa fa-search" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            <?php $__currentLoopData = $list_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li <?php if($key > 2 and empty($selected)): ?> class="hide" <?php endif; ?>>
                    <div class="bravo-checkbox">
                        <label>
                            <input <?php if(in_array($category->id,$selected)): ?> checked <?php endif; ?> type="checkbox" name="category_id[]" value="<?php echo e($category->id); ?>"> 
                            <?php echo e($category->name); ?>

                            <span class="checkmark"></span>
                        </label>
                    </div>
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
        <?php if(count($list_category) > 3 and empty($selected)): ?>
            <button type="button" class="btn btn-link btn-more-item"><?php echo e(__("More")); ?> <i class="fa fa-caret-down"></i></button>
        <?php endif; ?>
    </div>
</div><?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/layouts/search/filter/category.blade.php ENDPATH**/ ?>