
<?php $__env->startSection('content'); ?>
    <div class="container-fluid">
        <div class="d-flex justify-content-between mb20">
            <h1 class="title-bar"><?php echo e(__('All Enquiries')); ?></h1>
        </div>
        <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="filter-div d-flex justify-content-between">
            <div class="col-left">
                <?php if(!empty($enquiry_update)): ?>
                    <form method="post" action="<?php echo e(url('admin/module/report/enquiry/bulkEdit')); ?>" class="filter-form filter-form-left d-flex justify-content-start">
                        <?php echo csrf_field(); ?>
                        <select name="action" class="form-control">
                            <option value=""><?php echo e(__("-- Bulk Actions --")); ?></option>
                            <?php if(!empty($statues)): ?>
                                <?php $__currentLoopData = $statues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($status); ?>"><?php echo e(__('Mark as: :name',['name'=>booking_status_to_text($status)])); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                            <option value="delete"><?php echo e(__("DELETE Enquiry")); ?></option>
                        </select>
                        <button data-confirm="<?php echo e(__("Do you want to delete?")); ?>" class="btn-info btn btn-icon dungdt-apply-form-btn" type="button"><?php echo e(__('Apply')); ?></button>
                    </form>
                <?php endif; ?>
            </div>
            <div class="col-left">
                <form method="get" action="" class="filter-form filter-form-right d-flex justify-content-end">
                    <input type="text" name="s" value="<?php echo e(Request()->s); ?>" placeholder="<?php echo e(__('Search by email')); ?>" class="form-control">
                    <button class="btn-info btn btn-icon" type="submit"><?php echo e(__('Filter')); ?></button>
                </form>
            </div>
        </div>
        <div class="text-right">
            <p><i><?php echo e(__('Found :total items',['total'=>$rows->total()])); ?></i></p>
        </div>
        <div class="panel booking-history-manager">
            <div class="panel-title"><?php echo e(__('Enquiries')); ?></div>
            <div class="panel-body">
                <form action="" class="bravo-form-item">
                    <table class="table table-hover bravo-list-item">
                        <thead>
                        <tr>
                            <th width="80px"><input type="checkbox" class="check-all"></th>
                            <th><?php echo e(__('Service')); ?></th>
                            <th><?php echo e(__('Customer')); ?></th>
                            <th width="80px"><?php echo e(__('Status')); ?></th>
                            <th width="180px"><?php echo e(__('Created At')); ?></th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php if($rows->total() > 0): ?>
                                <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><input type="checkbox" class="check-item" name="ids[]" value="<?php echo e($row->id); ?>">
                                            #<?php echo e($row->id); ?></td>
                                        <td>
                                            <?php if($service = $row->service): ?>
                                                <a href="<?php echo e($service->getDetailUrl()); ?>" target="_blank"><?php echo e($service->title ?? ''); ?></a>
                                                <?php if($service->author): ?>
                                                    <br>
                                                    <span><?php echo e(__('by')); ?></span>
                                                    <a href="<?php echo e(url('admin/module/user/edit/'.$service->author->id)); ?>"
                                                       target="_blank"><?php echo e($service->author->getDisplayName() .' (#'.$service->author->id.')'); ?></a>
                                                <?php endif; ?>
                                            <?php else: ?>
                                                <?php echo e(__("[Deleted]")); ?>
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <ul>
                                                <li><?php echo e(__("Name:")); ?> <?php echo e($row->name); ?></li>
                                                <li><?php echo e(__("Email:")); ?> <?php echo e($row->email); ?></li>
                                                <li><?php echo e(__("Phone:")); ?> <?php echo e($row->phone); ?></li>
                                                <li><?php echo e(__("Notes:")); ?> <?php echo e($row->note); ?></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <span class="label label-<?php echo e($row->status); ?>"><?php echo e($row->statusName); ?></span>
                                        </td>
                                        <td><?php echo e(display_datetime($row->updated_at)); ?></td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="6"><?php echo e(__("No data")); ?></td>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
        <div class="d-flex justify-content-end">
            <?php echo e($rows->links()); ?>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\modules/Report/Views/admin/enquiry/index.blade.php ENDPATH**/ ?>