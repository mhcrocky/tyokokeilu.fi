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
                <div class="card ads-iamge" onclick="gotolink('{{$ads_link}}')" style="background-image: @if($ads_iamge) url('{{$ads_iamge}}') @endif;">
                @if ($ads_txt)
                    <span class="">{{$ads_txt}}</span>
                @endif
                </div>
            </div>
        </div>
    </div>
</div>
<script>
function gotolink(link) {
    location.href = link
}
</script>
<style>
.ads-iamge{
    cursor: pointer;
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