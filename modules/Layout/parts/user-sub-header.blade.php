<div class="user-sub-header">
    <div class="container p-3">
        <nav class="nav nav-pills">
            @php
                $nav_class = '';
                if(isset($active_class)){
                    $nav_class = $active_class;
                }
            @endphp
            <a href="/user/job" class="nav-item nav-link @if($nav_class == 'job_dashboard')  active @endif">My Jobs</a>
            <a href="/user/job/create" class="nav-item nav-link @if($nav_class == 'job_create')  active @endif">Post a Job</a>
            <a href="/user/profile" class="nav-item nav-link @if($nav_class == 'user_profile')  active @endif">Profile</a>
        </nav>
    </div>
</div>
