{{-- @php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp
<div class="item-loop-list {{$wrap_class ?? ''}}">
    <div style="height: 50px">
        <span class="thumb-image float-left">
            <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl()}}">
                @if($row->image_url)
                    @if(!empty($disable_lazyload))
                        <img src="{{$row->image_url}}" class="img-responsive" alt="">
                    @else
                        {!! get_image_tag($row->image_id,'medium',['class'=>'img-responsive','alt'=>$translation->title]) !!}
                    @endif
                @endif
            </a>
        </span>
        <span class=" float-left ml-4">Name</span>
        <span class="text-right published_date">3 days ago</span>
    </div>
    <div class="item-title">
        <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl()}}">
            @if($row->is_instant)
                <i class="fa fa-bolt d-none"></i>
            @endif
            {{$translation->title}}
        </a>
    </div>
    <div style="position: absolute; bottom:20px;">
        <div class="location">
            <i class="fa fa-map-marker" style="color:#172A31;"></i>
            @if (!empty($row->author->business_name))
                {{$row->author->business_name?? '' }}
            @endif
            ,
            @if(!empty($row->location->name))
                @php $location =  $row->location->translateOrOrigin(app()->getLocale()) @endphp
                {{$location->name ?? ''}}
            @endif
        </div>
        <div class="service-review-pc float-left ml-3">
            <div class="head">
                <div class="left">
                    <span class="head-rating">
                        <span>
                            <i class='fa fa-circle
                            @if (!$row->getAttribute('job_type'))
                                style="opacity:0"
                            @endif
                            @switch($row->getAttribute('job_type'))
                                @case('SummerJob')
                                    SummerJob
                                    @break
                                @case('Practice')
                                    Practice
                                    @break
                                @case('Internship')
                                    Internship
                                    @break
                                @default
                                    text-prmary
                            @endswitch'></i>
                            {{ $row->getAttribute('job_type') }}
                        </span>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<div class="item-loop-list">
    <div class="item-header">
        <span class="img">
            <a href="#"></a>
        </span>
        <span class="post_name">Masala Ravintola</span>
        <span class="published_date">3 days ago</span>
    </div>
    <div class="item-body">Sales Engineer, Application Modernization</div>
    <div class="item-footer">
        <div class="location">
            <i class="fa fa-map-marker"></i>
            Helsinki
        </div>
        <div class="job-type">
            <i class="far fa-pencil"></i>
            Training
        </div>
    </div>
</div>
