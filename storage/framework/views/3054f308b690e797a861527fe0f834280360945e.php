<?php
    use \modules\Job\Models\Job;
    $selected = (array) Request::query('job_type');
?>
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" class="search" placeholder="Filter by Type">
        <i class="fa fa-search" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input <?php if(in_array('Practice',$selected)): ?> checked <?php endif; ?> type="checkbox" name="job_type[]" value="<?php echo e('Practice'); ?>"> 
                        Practice
                        <span class="checkmark"></span>
                        <span class="badge badge-primary"><?php echo e(Job::getCount('Practice')); ?></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input <?php if(in_array('Internship',$selected)): ?> checked <?php endif; ?> type="checkbox" name="job_type[]" value="<?php echo e('Internship'); ?>"> 
                        Internship
                        <span class="checkmark"></span>
                        <span class="badge badge-primary"><?php echo e(Job::getCount('Internship')); ?></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input <?php if(in_array('SummerJob',$selected)): ?> checked <?php endif; ?> type="checkbox" name="job_type[]" value="<?php echo e('SummerJob'); ?>">
                        Summer Job
                        <span class="checkmark"></span>
                        <span class="badge badge-primary"><?php echo e(Job::getCount('SummerJob')); ?></span>
                    </label>
                </div>
            </li>
        </ul>
    </div>
</div><?php /**PATH D:\_Work\Vargha\tyokokeilu.fi\modules/Job/Views/frontend/layouts/search/filter/job_type.blade.php ENDPATH**/ ?>