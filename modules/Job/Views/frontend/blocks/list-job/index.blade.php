<div class="bravo-list-job">
    <div class="container">
        @if($title)
        <div class="title">
            {{$title}}
        </div>
        @endif
        <div class="row">
            <div class="col-md-9 cards p-0">
                @foreach($rows as $row)
                <div class="col-xl-6 float-left">
                    @include('Job::frontend.layouts.search.loop-list')
                </div>
                @endforeach
            </div>
            <div class="col-md-3">
                <a href="{{$ads_link}}" target="_blank" style="text-decoration: none;">
                    <div class="card ads-iamge">
                        @if($ads_iamge)
                            <img src="{{$ads_iamge}}" alt="">
                        @endif
                    </div>
                </a>
                <div class="daily">
                    <div class="mount">+148</div>
                    <div class="txt">
                        Daily jobs :
                        <a href="#">Explore more <i class="fa fa-chevron-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>