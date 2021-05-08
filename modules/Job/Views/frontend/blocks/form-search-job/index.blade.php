<div class="block-form-search-job" style="padding:30px 0px">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-heading text-head-cus">{{$title}}</h1>
                <div class="g-form-control">
                    @include('Job::frontend.layouts.search.form-search')
                </div>               
            </div>
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