@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp
<div class="item-loop-list {{$wrap_class ?? ''}}row mb-3">
    <div class="thumb-image col-sm-2">
        <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl()}}">
            @if($row->image_url)
                @if(!empty($disable_lazyload))
                    <img src="{{$row->image_url}}" class="img-responsive" alt="">
                @else
                    {!! get_image_tag($row->image_id,'medium',['class'=>'img-responsive','alt'=>$translation->title]) !!}
                @endif
            @endif
        </a>
    </div>
    <div class="col-sm-6">Name</div>
    <div class="col-sm-4 text-right pr-0 published_date">3 days ago</div>
    <div class="item-title col-sm-12">
        <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl()}}">
            @if($row->is_instant)
                <i class="fa fa-bolt d-none"></i>
            @endif
            {{$translation->title}}
        </a>
    </div>
    <div class="location col-sm-6 pl-0">
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
    <div class="service-review-pc">
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
