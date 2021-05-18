@php
    $selected = (array) Request::query('category_id');
    $s_category =Request::query('s_category');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" class="s_category search" name="s_category" value="{{$s_category}}" placeholder="Category">
    </div>
    <div class="search_input">
        <i class="fa fa-search mr-3"></i>
        <input type="text" placeholder="Search sector" class="form-control">
    </div>
    <div class="item-content">
        <ul class="s_category">
            @foreach ($list_category as $key=>$category)
                <li data="{{$category->name}}" >
                    <div class="bravo-checkbox">
                        <label>
                            <input @if(in_array($category->id,$selected)) checked @endif type="checkbox" name="category_id[]" value="{{ $category->id }}"> 
                            {{ $category->name}}
                            <span class="checkmark"></span>
                            {{-- <span class="badge badge-primary">{{$category->job->where('status','publish')->count()}}</span> --}}
                        </label>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>