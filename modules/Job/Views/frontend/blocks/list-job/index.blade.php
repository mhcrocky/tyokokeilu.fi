<div class="bravo-list-job">
    <div class="container">
        @if($title)
        <div class="title">
            {{$title}}
        </div>
        @endif
        <div class="row">
            <div class="col-md-9">
                @foreach($rows as $row)
                    <div class="col-md-12">
                        @include('Job::frontend.layouts.search.loop-list')
                    </div>
                @endforeach
            </div>
            <div class="col-md-3">
                <div class="card ads-iamge" >
                    <span class="">{{$ads_txt}}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
.ads-iamge{
    background-image: url('{{$ads_iamge}}');
    height:25rem;
    background-size:cover;
}
.ads-iamge>span{
    color: white;
    font-size: 20px;
    font-family: cursive;
    padding: 2rem;
}
</style>