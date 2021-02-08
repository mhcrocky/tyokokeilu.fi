
<?php $__env->startSection('head'); ?>
    <link href="<?php echo e(asset('dist/frontend/module/location/css/location.css?_ver='.config('app.version'))); ?>" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo e(asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css")); ?>"/>
    <link rel="stylesheet" type="text/css" href="<?php echo e(asset("libs/fotorama/fotorama.css")); ?>"/>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="bravo_detail_location">
        <?php echo $__env->make('Location::frontend.layouts.details.location-banner', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="bravo_content">
            <div class="container">
                <div class="row py-5">
                    <div class="col-md-12 col-lg-8">
                        <h1 class="title-location"><?php echo e($translation->name); ?></h1>
                        <?php echo $__env->make('Location::frontend.layouts.details.location-overview', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <?php if($row->image_id): ?>
                            <div class="g-thumbnail m-3">
                                <img data-src="<?php echo $row->getImageUrl() ?>" class="img-fluid lazy" alt="<?php echo e($translation->name); ?>">
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
                <?php $types = get_bookable_services() ?>
                <?php if(!empty($types)): ?>
                    <div class="g-location-module py-5 border-top border-bottom">
                        <div class="row">
                            <div class="col-12 col-lg-5">
                                <h3><?php echo e(__("Explore the place")); ?></h3>
                            </div>
                            <div class="col-12 col-lg-7">
                                <ul class="location-module-nav nav nav-pills justify-content-lg-end">
                                    <?php $i = 0 ?>
                                    <?php $__currentLoopData = $types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $type=>$moduleClass): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php
                                        if(!$moduleClass::isEnable()) continue;
                                        $moduleInst = new $moduleClass();
                                        $data[$type] = $moduleInst->select($moduleInst::getTableName().'.*')
                                        ->join('bravo_locations', function ($join) use ($row,$moduleInst) {
                                            $join->on('bravo_locations.id', '=', $moduleInst::getTableName().'.location_id')
                                                ->where('bravo_locations._lft', '>=', $row->_lft)
                                                ->where('bravo_locations._rgt', '<=', $row->_rgt);
                                        })
                                        ->where($moduleInst::getTableName().'.status','publish')->with('location')->take(8)->get();
                                        ?>
                                        <?php if($data[$type]->count()>0): ?>
                                            <li>
                                                <a class="<?php echo e($i==0?'active':""); ?>" href="#module-<?php echo e($type); ?>" data-toggle="tab"><?php echo e(call_user_func([$moduleClass,'getModelName'])); ?></a>
                                            </li>
                                            <?php $i++ ?>
                                        <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content clearfix py-5">
                            <?php $i=0 ?>
                            <?php $__currentLoopData = $types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $type=>$moduleClass): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php  if(!$moduleClass::isEnable()) continue; ?>
                                <?php $view = ucfirst($type).'::frontend.blocks.list-'.$type.'.index' ?>
                                <?php if(view()->exists($view)): ?>
                                    <?php if($data[$type]->count()>0): ?>
                                        <div class="tab-pane <?php echo e($i==0?'active':""); ?>" id="module-<?php echo e($type); ?>">
                                            <?php echo $__env->make($view,['title'=>"",'style_list'=>'normal','desc'=>'','rows'=> $data[$type]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            <p class="text-center"><a class="btn btn-primary btn-search" href="<?php echo e($row->getLinkForPageSearch($type)); ?>"><?php echo e(__('View More')); ?></a></p>
                                        </div>
                                        <?php $i++ ?>
                                    <?php endif; ?>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>

                <?php endif; ?>
                <div class="row">
                    <div class="col-12">
                        <h3 class="py-5"><?php echo e(__("The City Maps")); ?></h3>
                    </div>
                </div>
            </div>
            <?php echo $__env->make('Location::frontend.layouts.details.location-map', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="container">
                <?php echo $__env->make('Location::frontend.layouts.details.location-trip-idea', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
    <?php echo App\Helpers\MapEngine::scripts(); ?>
    <script>
        jQuery(function ($) {
            <?php if($row->map_lat && $row->map_lng): ?>
            new BravoMapEngine('map_content', {
                disableScripts: true,
                fitBounds: true,
                center: [<?php echo e($row->map_lat); ?>, <?php echo e($row->map_lng); ?>],
                zoom:<?php echo e($row->map_zoom ?? "8"); ?>,
                ready: function (engineMap) {
                    engineMap.addMarker([<?php echo e($row->map_lat); ?>, <?php echo e($row->map_lng); ?>], {
                        icon_options: {}
                    });
                }
            });
            <?php endif; ?>
        })
    </script>

    <script type="text/javascript" src="<?php echo e(asset("libs/ion_rangeslider/js/ion.rangeSlider.min.js")); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset("libs/fotorama/fotorama.js")); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset("libs/sticky/jquery.sticky.js")); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\modules/Location/Views/frontend/detail.blade.php ENDPATH**/ ?>