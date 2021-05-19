<div class="bravo-list-item">
    <div class="topbar-search">
        {{-- <h2 class="text">
            @if( !empty(Request::query('s')) ) 
                {{ Request::query('s') }}
            @endif
        </h2> --}}
        <span style="padding-left: 10px; color: #8E8C95;">
            @if($rows->total() > 1)
                {{ __("Found :count jobs",['count'=>$rows->total()]) }}
            @else
                {{ __(":count job found",['count'=>$rows->total()]) }}
            @endif
        </span>
        <div class="control">
            @include('Job::frontend.layouts.search.orderby')
        </div>
    </div>
    <div class="list-item">
        <div class="row">
            @if($rows->total() > 0)
                @foreach($rows as $row)
                    @php $layout = setting_item("job_layout_item_search",'list') @endphp
                    @if($layout == "list")
                        <div class="col-lg-12 col-md-12">
                            @include('Job::frontend.layouts.search.loop-list')
                        </div>
                    @else
                        <div class="col-lg-4 col-md-12">
                            @include('Job::frontend.layouts.search.loop-grid')
                        </div>
                    @endif
                @endforeach
            @else
                <div class="col-lg-12">
                    {{__("Job not found")}}
                </div>
            @endif
        </div>
    </div>
    <div class="bravo-pagination">
        {{$rows->appends(request()->query())->links()}}
        @if($rows->total() > 0)
            <span class="count-string">{{ __("Showing :from - :to of :total Jobs",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()]) }}</span>
        @endif
    </div>
</div>