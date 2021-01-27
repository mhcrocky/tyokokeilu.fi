<div class="card user-profile-card">
    <div class="profile-header p-2">
        <img class="my-5 img-company-logo" src="http://localhost/uploads/demo/space/gallery/space-gallery-6.jpg" alt="">
        <h4>{{Auth::User()->getDisplayName()}}</h4>
        <h6>Restaurant</h6>
    </div>
    <div class="profile-main">
        <div class="col-pl-6 job-count">
            <a href="{{ route('job.vendor.index',['status'=>'publish'])}}" class="btn">
                <h5>{{ $job_count['publish'] }}</h5>
                <p class="job-opened">Jobs</p>
            </a>
        </div>
        <div class="col-pl-6 job-count">
            <a href="{{ route('job.vendor.index',['status'=>'draft'])}}" class="btn">
                <h5>{{ $job_count['closed'] }}</h5>
                <p class="job-closed">Closed&nbspJobs</p>
            </a>
        </div>
    </div>
    <div class="profile-contact pb-2">
        <div>
            <button class="btn btn-contact-icon"><i class="fa fa-phone phone-icon"></i></button>
            <span class="contact-text">{{ Auth::User()->email }}</span>
        </div>
        <div>
            <button class="btn btn-contact-icon"><i class="fa fa-envelope email-icon"></i></button>
            <span class="contact-text">21412412412</span>
            
        </div>
    </div>
</div>
