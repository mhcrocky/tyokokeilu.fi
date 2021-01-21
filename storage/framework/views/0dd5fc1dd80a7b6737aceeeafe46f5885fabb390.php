<h2 class="title-bar no-border-bottom">

    <?php echo e(__("Booking Report")); ?>


</h2>

<?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<div class="booking-history-manager">
job.vendor
    <div class="tabbable">

        <ul class="nav nav-tabs ht-nav-tabs">

            <?php $status_type = Request::query('status'); ?>

            <li class="<?php if(empty($status_type)): ?> active <?php endif; ?>">

                <a href="<?php echo e(route("job.vendor.booking_report")); ?>"><?php echo e(__("All Booking")); ?></a>

            </li>

            <?php if(!empty($statues)): ?>

                <?php $__currentLoopData = $statues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                    <li class="<?php if(!empty($status_type) && $status_type == $status): ?> active <?php endif; ?>">

                        <a href="<?php echo e(route("job.vendor.booking_report",['status' => $status])); ?>"><?php echo e(booking_status_to_text($status)); ?></a>

                    </li>

                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            <?php endif; ?>

        </ul>

        <?php if(!empty($bookings) and $bookings->total() > 0): ?>

            <div class="tab-content">

                <div class="table-responsive">

                    <table class="table table-bordered table-striped table-booking-history">

                        <thead>

                        <tr>

                            <th width="2%"><?php echo e(__("Type")); ?></th>

                            <th><?php echo e(__("Title")); ?></th>

                            <th class="a-hidden"><?php echo e(__("Order Date")); ?></th>

                            <th class="a-hidden"><?php echo e(__("Execution Time")); ?></th>

                            <th><?php echo e(__("Total")); ?></th>

                            <th><?php echo e(__("Paid")); ?></th>

                            <th><?php echo e(__("Remain")); ?></th>

                            <th class="a-hidden"><?php echo e(__("Status")); ?></th>

                            <th><?php echo e(__("Action")); ?></th>

                        </tr>

                        </thead>

                        <tbody>

                        <?php $__currentLoopData = $bookings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $booking): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <?php echo $__env->make('Job::frontend.vendorJob.bookingReport.loop', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </tbody>

                    </table>

                </div>

                <div class="bravo-pagination">

                    <?php echo e($bookings->appends(request()->query())->links()); ?>


                </div>

            </div>

        <?php else: ?>

            <?php echo e(__("No Booking")); ?>


        <?php endif; ?>

    </div>

</div>

<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/vendorJob/bookingReport/index.blade.php ENDPATH**/ ?>