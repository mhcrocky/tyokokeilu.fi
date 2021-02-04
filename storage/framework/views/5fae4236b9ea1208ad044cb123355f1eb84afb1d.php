

<?php $__env->startSection('content'); ?>
    <form action="<?php echo e(route('location.admin.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])); ?>" method="post">
        <?php echo csrf_field(); ?>
        <div class="container-fluid">
            <div class="d-flex justify-content-between mb20">
                <div class="">
                    <h1 class="title-bar"><?php echo e($row->id ? 'Edit: '.$row->name : __("Add new location")); ?></h1>
                    <?php if($row->slug): ?>
                        <p class="item-url-demo"><?php echo e(__("Permalink")); ?>: <?php echo e(url( (request()->query('lang') ? request()->query('lang').'/' : '').config('location.location_route_prefix'))); ?>/<a href="#" class="open-edit-input" data-name="slug"><?php echo e($row->slug); ?></a></p>
                    <?php endif; ?>
                </div>
                <div class="">
                    <?php if($row->slug): ?>
                        <a class="btn btn-primary btn-sm" href="<?php echo e($row->getDetailUrl(request()->query('lang'))); ?>" target="_blank"><?php echo e(__("View")); ?></a>
                    <?php endif; ?>
                </div>
            </div>
            <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php if($row->id): ?>
                <?php echo $__env->make('Language::admin.navigation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endif; ?>

            <div class="lang-content-box">
                <div class="row">
                    <div class="col-md-9">
                        <div class="panel">
                            <div class="panel-body">
                                <h3 class="panel-body-title"><?php echo e(__("Location Content")); ?></h3>
                                <?php echo $__env->make('Location::admin/form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php if(is_default_lang()): ?>
                                    <div class="form-group">
                                        <label class="control-label"><?php echo e(__("Banner Image")); ?></label>
                                        <div class="form-group-image">
                                            <?php echo \Modules\Media\Helpers\FileHelper::fieldUpload('banner_image_id',$row->banner_image_id); ?>
                                        </div>
                                    </div>

                                    <div class="form-group form-index-hide">
                                        <label class="control-label"><?php echo e(__("The geographic coordinate")); ?></label>
                                        <div class="control-map-group">
                                            <div id="map_content"></div>
                                            <div class="g-control">
                                                <div class="form-group">
                                                    <label><?php echo e(__("Map Latitude")); ?>:</label>
                                                    <input type="text" name="map_lat" class="form-control" value="<?php echo e($row->map_lat); ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label><?php echo e(__("Map Longitude")); ?>:</label>
                                                    <input type="text" name="map_lng" class="form-control" value="<?php echo e($row->map_lng); ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label><?php echo e(__("Map Zoom")); ?>:</label>
                                                    <input type="text" name="map_zoom" class="form-control" value="<?php echo e($row->map_zoom ?? "8"); ?>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                <div class="form-group-item">
                                    <label class="control-label"><?php echo e(__('Trip Ideas')); ?></label>
                                    <div class="g-items-header">
                                        <div class="row">
                                            <div class="col-md-2"><?php echo e(__('Image')); ?></div>
                                            <div class="col-md-4"><?php echo e(__("Title/Link")); ?></div>
                                            <div class="col-md-5"><?php echo e(__('Content')); ?></div>
                                            <div class="col-md-1"></div>
                                        </div>
                                    </div>
                                    <div class="g-items">
                                        <?php if(!empty($translation->trip_ideas)): ?>
                                            <?php if(!is_array($translation->trip_ideas)) $translation->trip_ideas = json_decode($translation->trip_ideas); ?>
                                            <?php if(count($translation->trip_ideas)): ?>
                                            <?php $__currentLoopData = $translation->trip_ideas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$trip_idea): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="item" data-number="<?php echo e($key); ?>">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <?php echo \Modules\Media\Helpers\FileHelper::fieldUpload('trip_ideas['.$key.'][image_id]',$trip_idea['image_id']); ?>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="text" name="trip_ideas[<?php echo e($key); ?>][title]" class="form-control" value="<?php echo e($trip_idea['title']); ?>" placeholder="<?php echo e(__("Title:")); ?>">
                                                            <input type="text" name="trip_ideas[<?php echo e($key); ?>][link]" class="form-control" value="<?php echo e($trip_idea['link']); ?>" placeholder="<?php echo e(__("Link:")); ?>">
                                                        </div>
                                                        <div class="col-md-5">
                                                            <textarea name="trip_ideas[<?php echo e($key); ?>][content]" class="form-control full-h" placeholder="..."><?php echo e($trip_idea['content']); ?></textarea>
                                                        </div>
                                                        <div class="col-md-1">
                                                            <?php if(is_default_lang()): ?>
                                                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>
                                                            <?php endif; ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="text-right">
                                        <?php if(is_default_lang()): ?>
                                            <span class="btn btn-info btn-sm btn-add-item"><i class="icon ion-ios-add-circle-outline"></i> <?php echo e(__('Add item')); ?></span>
                                        <?php endif; ?>
                                    </div>
                                    <div class="g-more hide">
                                        <div class="item" data-number="__number__">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <?php echo \Modules\Media\Helpers\FileHelper::fieldUpload('trip_ideas[__number__][image_id]','','__name__'); ?>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" __name__="trip_ideas[__number__][title]" class="form-control" placeholder="<?php echo e(__("Title:")); ?>">
                                                    <input type="text" __name__="trip_ideas[__number__][link]" class="form-control" placeholder="<?php echo e(__("Link:")); ?>">
                                                </div>
                                                <div class="col-md-5">
                                                    <textarea __name__="trip_ideas[__number__][content]" class="form-control full-h" placeholder="..."></textarea>
                                                </div>
                                                <div class="col-md-1">
                                                    <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <?php echo $__env->make('Core::admin/seo-meta/seo-meta', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                    <div class="col-md-3">
                        <div class="panel">
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
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> <?php echo e(__('Save Changes')); ?></button>
                                </div>
                            </div>
                        </div>
                        <?php if(is_default_lang()): ?>
                            <div class="panel">
                                <div class="panel-title"><strong><?php echo e(__('Feature Image')); ?></strong></div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <?php echo \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id); ?>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </form>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script.body'); ?>
    <?php echo \App\Helpers\MapEngine::scripts(); ?>
    <script>
        jQuery(function ($) {
            new BravoMapEngine('map_content', {
                disableScripts:true,
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
                    })
                }
            });
        })
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\modules/Location/Views/admin/detail.blade.php ENDPATH**/ ?>