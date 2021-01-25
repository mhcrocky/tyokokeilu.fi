<div class="card profile-card">
    <div class="profile-header p-2">
        <img class="my-2 img-company-logo" src="http://localhost/uploads/demo/space/gallery/space-gallery-6.jpg" alt="">
        <h4><?php echo e(Auth::User()->getDisplayName()); ?></h4>
        <h6>Restaurant</h6>
    </div>
    <div class="row p-1 profile-main">
        <div class="col-6 job-count">
            <a href="<?php echo e(route('job.vendor.index',['status'=>'publish'])); ?>" class="btn">
                <h5>6</h5>
                <p class="job-opened">Opened&nbspJobs</p>
            </a>
        </div>
        <div class="col-6 job-count">
            <a href="<?php echo e(route('job.vendor.index',['status'=>'draft'])); ?>" class="btn">
                <h5>6</h5>
                <p class="job-closed">Closed&nbspJobs</p>
            </a>
        </div>
    </div>
    <div class="row profile-contact pb-3">
        <div class="col-12 m-2">
            <button class="btn btn-contact-icon"><i class="fa fa-phone phone-icon"></i></button>
            <span class="contact-text"><?php echo e(Auth::User()->email); ?></span>
        </div>
        <div class="col-12 m-2">
            <button class="btn btn-contact-icon"><i class="fa fa-envelope email-icon"></i></button>
            <span class="contact-text">21412412412</span>
            
        </div>
    </div>
</div>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/user/profile-card.blade.php ENDPATH**/ ?>