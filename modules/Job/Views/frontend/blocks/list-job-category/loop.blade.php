<div class="category-list" style="text-align: center">
    <a href="/job?category_id%5B%5D={{$row->id}}">
        <img src="{{$row->getImageUrl()}}" alt="" srcset="" class="category-image">
        <span class="category-name">{{ $row->name }}</span>
    </a>
</div>
<style>
    .category-image{
        height: 150px;
        width: 100%;
        border-radius: 30px;
        margin: auto;
    }
</style>