<?php
    $selected = (array) Request::query('category_id');
    $s_category =Request::query('s_category');
?>
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" class="s_category search" name="s_category" value="<?php echo e($s_category); ?>" placeholder="Category">
    </div>
    <div class="search_input">
        <i class="fa fa-search mr-3"></i>
        <input type="text" placeholder="Search sector" class="form-control">
    </div>
    <div class="item-content">
        <ul class="s_category">
            <?php $__currentLoopData = $list_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li data="<?php echo e($category->name); ?>" >
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
    </div>
</div><?php /**PATH /home/znwaqgrx/public_html/modules/Job/Views/frontend/layouts/search/filter/category.blade.php ENDPATH**/ ?>