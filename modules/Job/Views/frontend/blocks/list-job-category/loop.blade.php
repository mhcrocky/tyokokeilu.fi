<div class="category-list">
    <a href="/job?category_id%5B%5D={{$row->id}}">
        <img src="{{$row->getImageUrl()}}" alt="" srcset="" class="category-image">
        <span class="category-name">{{ $row->name }}</span>
    </a>
</div>