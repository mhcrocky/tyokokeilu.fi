
<?php $__env->startSection('head'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="page-template-content">
    <div class="job-dashboard container">
        <div class="row">
            <div class="col-12">
                <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-3">
                <?php echo $__env->make('Job::frontend.layouts.user.profile-card', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-9">
                <div class="lang-content-box">
                    <form action="<?php echo e(route('job.vendor.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])); ?>" method="post">
                        <?php echo csrf_field(); ?>
                        <div class="container-fluid">
                            <div class="lang-content-box">
                                <div class="p-5">
                                    <h2 class="title-bar no-border-bottom">
                                        <?php echo e($row->id ? __('Edit Job'): __('Add new job')); ?>

                                    </h2>
                                    <?php echo $__env->make('Job::frontend.layouts.user.edit.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php echo $__env->make('Job::frontend.layouts.user.edit.category', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php echo $__env->make('Job::frontend.layouts.user.edit.jobtime', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php echo $__env->make('Job::frontend.layouts.user.edit.contact', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php echo $__env->make('Job::frontend.layouts.user.edit.location', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <div class="form-group-image">
                                                <?php echo \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id); ?>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-9 p-5">
                                        <div class="panel border shadow">
                                            <div class="panel-title"><strong><?php echo e(__('Publish')); ?></strong></div>
                                            <div class="panel-body">
                                                <?php if(is_default_lang()): ?>
                                                    <div>
                                                        <label><input <?php if($row->status=='publish'): ?> checked <?php endif; ?> type="radio" name="status" value="publish"> <?php echo e(__("Publish")); ?>

                                                        </label></div>
                                                    <div>
                                                        <label><input <?php if($row->status=='draft'): ?> checked <?php endif; ?> type="radio" name="status" value="draft"> <?php echo e(__("Draft")); ?>

                                                        </label></div>
                                                <?php endif; ?>
                                                <div class="text-right">
                                                    <button class="btn btn-danger" type="submit"><i class="fa fa-save"></i> <?php echo e(__('Save Changes')); ?></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>    
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
    <script type="text/javascript" src="<?php echo e(asset('libs/tinymce/js/tinymce/tinymce.min.js')); ?>" ></script>
    <script type="text/javascript" src="<?php echo e(asset('js/condition.js?_ver='.config('app.version'))); ?>"></script>
    <?php echo App\Helpers\MapEngine::scripts(); ?>

    <script>
        jQuery(function ($) {
            new BravoMapEngine('map_content', {
                fitBounds: true,
                center: [<?php echo e($row->map_lat ?? "51.505"); ?>, <?php echo e($row->map_lng ?? "-0.09"); ?>],
                zoom:<?php echo e($row->map_zoom ?? "8"); ?>,
                ready: function (engineMap) {
                    <?php if($row->map_lat && $row->map_lng): ?>
                    engineMap.addMarker([<?php echo e($row->map_lat); ?>, <?php echo e($row->map_lng); ?>], {
                        icon_options: {}
                    });
                    <?php endif; ?>
                    engineMap.on('click', function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                    engineMap.on('zoom_changed', function (zoom) {
                        $("input[name=map_zoom]").attr("value", zoom);
                    });
                    engineMap.searchBox($('#customPlaceAddress'),function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                    engineMap.searchBox($('.bravo_searchbox'),function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                }
            });
        })
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/vendorJob/detail.blade.php ENDPATH**/ ?>