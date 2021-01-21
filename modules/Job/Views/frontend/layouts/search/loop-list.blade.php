@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp
<div class="item-loop-list {{$wrap_class ?? ''}}">
    <div class="thumb-image">
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
    <div class="g-info">
        <div class="item-title">
            <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl()}}">
                @if($row->is_instant)
                    <i class="fa fa-bolt d-none"></i>
                @endif
                {{$translation->title}}
            </a>
        </div>
        <div class="location">
            @if(!empty($row->location->name))
                @php $location =  $row->location->translateOrOrigin(app()->getLocale()) @endphp
                {{$location->name ?? ''}}
            @endif
        </div>
    </div>
    <div class="g-rate-price">
            <div class="service-review-pc">
                <div class="head">
                    <div class="left">
                        <span class="head-rating">
                            <button
                            @switch($row->getAttribute('type'))
                                @case('SummerJob')
                                    class="btn-sm btn btn-SummerJob" 
                                    @break
                                @case('Practice')
                                    class="btn-sm btn btn-Practice" 
                                    @break
                                @case('Internship')
                                    class="btn-sm btn btn-Internship" 
                                    @break
                            @endswitch
                            
                            
                            
                            >{{ $row->getAttribute('type') }}</button>
                        </span>
                        <span class="text-rating">Starting 12.12.2002</span>
                    </div>
                </div>
            </div>
    </div>
</div>
