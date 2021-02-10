@php
    $selected = (array) Request::query('category_id');
    $s_category = Request::query('s_category')?Request::query('s_category') : '';
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" name="s_category" value="{{ $s_category }}">
        <button>
            <i class="fa fa-search"></i>
        </button>
    </div>
    <div class="item-content">
        <ul>
            @foreach ($list_category as $key=>$category)
                <li >
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
        @if(!$list_category->count()) no Category @endif
    </div>
</div>