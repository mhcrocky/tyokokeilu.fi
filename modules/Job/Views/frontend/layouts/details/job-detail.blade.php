{{-- @include('Job::frontend.layouts.details.banner') --}}
<div class="container">
    {{-- @include('Job::frontend.layouts.details.header') --}}
    <div class="row">
        <div class="col-md-12 job-banner-image" style="background-image:url('{{ $row->image_url }}') !important;"></div>
        <div class="col-md-8 job-detail">
            @if($translation->content)
            <div class="heading">
                <div class="row m-0 p-0 col-md-12">
                    <div class="user_img col-sm-1" style="background-image:url('{{ $row->image_url }}') !important;"></div>
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
                            <i class="fas fa-chart-bar mr-2 col-sm-1 pt-1"></i>Starting<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fas fa-map-marker mr-2 col-sm-1 pt-1"></i>Location<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-circle mr-2 col-sm-1 pt-1"></i>Job duration<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-user mr-2 col-sm-1 pt-1"></i>Job type<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="fa fa-sticky-note mr-2 col-sm-1 pt-1"></i>Salary<br>02:03:03
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="row">
                            <i class="far fa-star mr-2 col-sm-1 pt-1"></i>Experience<br>02:03:03
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-overview">  
                <div>
                    <h2>{{__("Description")}}</h2>
                    <div class="description">
                        <?php echo $translation->content ?>
                    </div>    
                </div>
                <div>
                    <h2>{{__("How to play")}}</h2>  
                    <div class="how">
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequataute irure dolor in reprehenderit in voluptate.    
                    </div>
                    <div class="btn_group">
                        <button class="btn btn-danger float-right ml-5"><i class="fa fa-envelope mr-1"></i>Email</button>
                        <button class="btn btn-default float-right">Apply</button>
                    </div>
                </div> 
            </div>
            @endif
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
                    <div>{{$row->contact_email}}</div>
                </div>
            </div>
        </div>
        <div class="similar_job col-md-12">
            <h3>Similar Job</h3>
            <div class="col-xl-4 col-md-4 p-0">
                @include('Job::frontend.layouts.search.loop-list')
            </div>
        </div>
    </div>
    {{-- @include('Job::frontend.layouts.details.contact-info') --}}
</div>