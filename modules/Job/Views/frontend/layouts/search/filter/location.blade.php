@php
    $selected = (array) Request::query('location_id');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <h3> Filter by Location </h3>
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            @foreach ($list_location as $key=>$location)
                <li @if($key > 2 and empty($selected)) class="hide" @endif>
                    <div class="bravo-checkbox">
                        <label>
                            <input @if(in_array($location->id,$selected)) checked @endif type="checkbox" name="location_id[]" value="{{ $location->id }}"> 
                            {{ $location->name}}
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </li>
            @endforeach
        </ul>
        @if(count($list_location) > 3 and empty($selected))
            <button type="button" class="btn btn-link btn-more-item">{{__("More")}} <i class="fa fa-caret-down"></i></button>
        @endif
    </div>
</div>
