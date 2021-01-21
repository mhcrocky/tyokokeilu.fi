<?php
    $selected = (array) Request::query('type');
?>
<div class="g-filter-item">
    <div class="item-title">
        <h3> Filter by type </h3>
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input <?php if(in_array('practice',$selected)): ?> checked <?php endif; ?> type="checkbox" name="type[]" value="<?php echo e('practice'); ?>"> 
                        Practice
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input <?php if(in_array('intership',$selected)): ?> checked <?php endif; ?> type="checkbox" name="type[]" value="<?php echo e('intership'); ?>"> 
                        Intership
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input <?php if(in_array('SummerJob',$selected)): ?> checked <?php endif; ?> type="checkbox" name="type[]" value="<?php echo e('SummerJob'); ?>">
                        Summer Job
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
        </ul>
    </div>
</div><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/search/filter/type.blade.php ENDPATH**/ ?>