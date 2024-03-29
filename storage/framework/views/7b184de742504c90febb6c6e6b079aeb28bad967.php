
<div class="container">
    
    <div class="row">
        <div class="col-md-12 job-banner-image" style="background-image:url('<?php echo e($row->image_url); ?>') !important;"></div>
        <div class="col-md-8 job-detail">
            <?php if($translation->content): ?>
            <div class="heading">
                <div class="row col-md-12">
                    <div class="user_img col-sm-1" style="background-image:url('<?php echo e($row->image_url); ?>') !important;"></div>
                    <div class="col-md-8 name">Masala Ravintola</div>
                    <div class="col-md-3 text-right">Posted: 3 day ago</div>
                </div>
                <div></div>
            </div>
            <div class="content">
                <h4>Waiter/Waitress at an Indian restaurant in Helsinki centre.</h4>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-pencil mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-map-marker mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-circle mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-user mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-sticky-note mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-star mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-overview">  
                <div>
                    <h2><?php echo e(__("Description")); ?></h2>
                    <div class="description">
                        <?php echo $translation->content ?>
                    </div>    
                </div>
                <div>
                    <h2><?php echo e(__("How to play")); ?></h2>  
                    <div class="how">
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequataute irure dolor in reprehenderit in voluptate.    
                    </div>
                    <div class="btn_group">
                        <button class="btn btn-danger float-right ml-5"><i class="fa fa-envelope mr-1"></i>Email</button>
                        <button class="btn btn-default float-right">Apply</button>
                    </div>
                </div> 
            </div>
            <?php endif; ?>
        </div>
        <div class="col-md-4 detail-right">
            <div class="col-sm-12 btn-group" role="group">
                <button class="btn btn-default"><i class="fa fa-share-alt"></i> Share</button>
                <button class="btn btn-primary">Apply job</button>
            </div>
            <div class="col-md-12 mt-5">
                <div class="location">
                    <label>Location</label>
                    <div class="picture"></div>
                </div>
            </div>
            <div class="col-md-12 mt-5">
                <div class="contact">
                    <label>Our contact</label>
                    <div><?php echo e($row->contact_email); ?></div>
                </div>
            </div>
        </div>
        <div class="similar_job col-md-12">
            <h3>Similar Job</h3>
            <div class="col-md-6">
                <?php echo $__env->make('Job::frontend.layouts.search.loop-list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>
    
</div><?php /**PATH D:\jobportal.sql\modules/Job/Views/frontend/layouts/details/job-detail.blade.php ENDPATH**/ ?>