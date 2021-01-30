@php
    $selected = (array) Request::query('category_id');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <h3> Filter by Category </h3>

        <i class="fa fa-search" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            @foreach ($list_category as $key=>$category)
                <li @if($key > 2 and empty($selected)) class="hide" @endif>
                    <div class="bravo-checkbox">
                        <label>
                            <input @if(in_array($category->id,$selected)) checked @endif type="checkbox" name="category_id[]" value="{{ $category->id }}"> 
                            {{ $category->name}}
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </li>
            @endforeach
        </ul>
        @if(count($list_category) > 3 and empty($selected))
            <button type="button" class="btn btn-link btn-more-item">{{__("More")}} <i class="fa fa-caret-down"></i></button>
        @endif
    </div>
</div>