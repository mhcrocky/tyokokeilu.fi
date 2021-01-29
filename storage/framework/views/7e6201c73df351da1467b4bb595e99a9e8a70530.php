<div class="g-header">
    <div class="container">
        <div class="float-left">
            <h1><?php echo e($row->title); ?></h1>
            <div class="onerow">
                <p class="address">
                    <i class="fa fa-map-marker"></i>
                    Nevada, US
                </p>
            </div>
        </div>
        <div class="float-right">
            <p>Type:<?php echo e($row->getAttribute('type')); ?></p> 
            <p>Starting:<?php echo e($row->start_at); ?></p> 

        </div>
    </div>
</div><?php /**PATH /home/znwaqgrx/public_html/modules/Job/Views/frontend/layouts/details/header.blade.php ENDPATH**/ ?>