<div class="card user-profile-card">
    <div class="profile-header p-2">
        <img class="my-5 img-company-logo" <?php if(Auth::User()->getAvatarUrl()): ?> src="<?php echo e(Auth::User()->getAvatarUrl()); ?>" <?php else: ?> src="/images/empty.png" <?php endif; ?> " alt="">
        <h4><?php echo e(Auth::User()->getDisplayName()); ?></h4>
        <h6>Restaurant</h6>
    </div>
    <div class="profile-main">
        <div class="col-pl-6 job-count">
            <a href="<?php echo e(route('job.vendor.index',['status'=>'publish'])); ?>" class="btn">
                <h5><?php echo e($job_count['publish']); ?></h5>
                <p class="job-opened">Jobs</p>
            </a>
        </div>
        <div class="col-pl-6 job-count">
            <a href="<?php echo e(route('job.vendor.index',['status'=>'draft'])); ?>" class="btn">
                <h5><?php echo e($job_count['closed']); ?></h5>
                <p class="job-closed">Paused&nbspJobs</p>
            </a>
        </div>
    </div>
    <div class="profile-contact">
        <div>
            <button class="btn btn-contact-icon"><i class="fa fa-phone phone-icon"></i></button>
            <span class="contact-text"><?php echo e(Auth::User()->phone); ?></span>
        </div>
        <div>
            <button class="btn btn-contact-icon"><i class="fa fa-envelope email-icon"></i></button>
            <span class="contact-text"><?php echo e(Auth::User()->email); ?></span>
            
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/layouts/user/profile-card.blade.php ENDPATH**/ ?>