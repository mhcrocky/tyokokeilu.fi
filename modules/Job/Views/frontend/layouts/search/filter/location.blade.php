@php
    $selected = (array) Request::query('location_id');
    $s_location = Request::query('s_location');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" name="s_location" value="{{ $s_location }}">
        <button>
            <i class="fa fa-search"></i>
        </button>
    </div>
    <div class="item-content">
        <ul>
            @foreach ($list_location as $key=>$location)
                <li>
                    <div class="bravo-checkbox">
                        <label>
                            <input @if(in_array($location->id,$selected)) checked @endif type="checkbox" name="location_id[]" value="{{ $location->id }}"> 
                            {{ $location->name}}
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </li>
            @endforeach
            @if(!$list_location->count()) no location @endif
        </ul>
    </div>
</div>
