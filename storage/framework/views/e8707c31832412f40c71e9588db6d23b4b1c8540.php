
<?php $__env->startSection('head'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="page-template-content">
    <div class="job-dashboard container" style="padding: 10px 0 17em;">
        <div class="row">
            <div class="col-12">
                <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-9">
                <div class="job-content-box">
                    <form action="<?php echo e(route('job.vendor.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])); ?>" method="post">
                        <?php echo csrf_field(); ?>
                        <div class="container-fluid">
                            <div class="pl-4">
                                <div class="row">
                                    <div class="title-bar col-sm-3">
                                        <?php echo e($row->id ? __('Edit Job'): __('Post a job')); ?>

                                    </div>
                                    <div style="font-family: 'Poppins'; font-size:13px;" class="col-sm-9">If you don’t have an account you can create one below by entering your email address. Your account details will be confirmed via email.</div>
                                </div>
                                <?php echo $__env->make('Job::frontend.layouts.user.edit.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo $__env->make('Job::frontend.layouts.user.edit.requirement', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo $__env->make('Job::frontend.layouts.user.edit.general', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo $__env->make('Job::frontend.layouts.user.edit.contact', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>                                
                                <div class="row btn_post">
                                    <div class="col-12 p-5">
                                        <div class="text-right">
                                            <a class="btn btn-action mr-5 btn-default" href="<?php echo e(route('job.vendor.index')); ?>" ><?php echo e(__('Save to Draft')); ?></a>
                                            <button class="btn btn-action btn-save" type="submit">
                                                <?php if($row->id): ?> <?php echo e(__('Save now')); ?> <?php else: ?> <?php echo e(__('Send Job Now')); ?> <?php endif; ?> 
                                            </button>
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
<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Task\job\modules/Job/Views/frontend/vendorJob/detail.blade.php ENDPATH**/ ?>