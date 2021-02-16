

<div class="block-list-job-category">
    <div class="container">
    @if ($rows->count())
        <div class="row">
            <div class="col-12 p-3">
                <span class="text-heading">{{$title}}</span>
                <span class="text-show-all">show all</span>
            </div>
            @foreach ($rows as $row)
            <div class="col-md-2">
                @include('Job::frontend.blocks.list-job-category.loop')
            </div>
            @endforeach
        </div>
    @endif  
    </div>
</div>
