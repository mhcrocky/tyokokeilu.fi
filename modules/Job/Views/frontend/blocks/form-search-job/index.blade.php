<div class="bravo-form-search-job" style="background: #F7F4EF;padding:30px 0px">
    <div class="container">
        <div class="row">
            <div class="col-md-7 mt-5 pt-5">
                <h1 class="text-heading text-head-cus">{{$title}}</h1>
                <div class="g-form-control">
                    @include('Job::frontend.layouts.search.form-search')
                </div>               
                
                <div class="sub-heading sub-head-cus"><?php printf( $sub_title, $job_count); ?></div>
            </div>
            <div class="col-md-5" style="background-image:url('{{$bg_image_url}}') !important;background-size:cover;height:500px"></div>
        </div>
    </div>
</div>
<style>
.text-head-cus{
    color: black;
    font-size:40px;
}
.sub-head-cus{
    color: black;
    position:relative;
    top:-40px
}
</style>