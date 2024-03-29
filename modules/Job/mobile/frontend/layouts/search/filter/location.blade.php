@php
    $selected = (array) Request::query('location_id');
    $s_location = Request::query('s_location');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <label>Cities</label>
        <input type="text" class="s_location search" value="{{$s_location}}" name="s_location" placeholder="">
    </div>
    <div class="search_input">
        <i class="fa fa-search mr-3"></i>
        <input type="text" placeholder="Search sector" class="form-control">
    </div>
    <div class="item-content" id="scrollbar">
        <ul class="s_location">
            @foreach ($list_location as $key=>$location)
                <li data="{{$location->name}}" >
                    <div class="bravo-checkbox">
                        <label>
                            <input @if(in_array($location->id,$selected)) checked @endif type="checkbox" name="location_id[]" value="{{ $location->id }}"> 
                            {{ $location->name}}
                            <span class="checkmark"></span>
                            {{-- <span class="badge badge-primary">{{$location->job->where('status','publish')->count()}}</span> --}}
                        </label>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>
<style>
input.search{
    border: 0px;
    font-size: 1.4rem;
    width: 12rem;
    font-weight: bold;
    line-height: 23px;
    margin: 0;
}
input.search:focus{
    outline: 0px;
}
</style>