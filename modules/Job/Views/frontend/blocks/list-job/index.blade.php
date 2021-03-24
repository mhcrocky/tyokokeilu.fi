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
                @if ($ads_txt)
                    <span class="ads-text-span" style="{{$ads_css}}">{{$ads_txt}}</span>
                @endif
                <a href="{{$ads_link}}" target="_blank" style="text-decoration: none;">
                    <div class="card ads-iamge">
                    @if($ads_iamge)
                        <img src="{{$ads_iamge}}" alt="">
                    @endif
                </div>
                </a>
            </div>
        </div>
    </div>
</div>