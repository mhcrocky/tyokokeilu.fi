<div class="item-list" style="border: 1px solid lightgrey;border-radius:15px;">
    @if($row->discount_percent)
        <div class="sale_info">{{$row->discount_percent}}</div>
    @endif
    <div class="row">
        <div class="col-md-3">
            <div class="thumb-image">
                <a href="{{$row->getDetailUrl()}}" target="_blank">
                    @if($row->image_url)
                        <img src="{{$row->image_url}}" class="img-responsive" alt="">
                    @endif
                </a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="float-left">
                <div class="item-title">
                    <a href="{{$row->getDetailUrl()}}" target="_blank">
                        {{$row->title}}
                    </a>
                </div>
                <div class="location">
                    {{__("Location")}}:
                    @if(!empty($row->location->name))
                         <span>{{$row->location->name ?? ''}}</span>
                    @else
                        <span>---</span>
                    @endif
                </div>
                <div class="location">
                    {{__("Starting")}}: <span>{{ display_date($row->start_at) }}</span>
                </div>
                <div class="location">
                    {{__("Status")}}: <span class="job-status">{{__($row->status)}}</span>
                </div>
            </div>
            <div class="control-action float-right">
                {{-- <a href="{{$row->getDetailUrl()}}" target="_blank" class="btn btn-light">{{__("View")}}</a> --}}
                @if(!empty($recovery))
                    <a href="{{ route("job.vendor.restore",[$row->id]) }}" class="btn btn-recovery btn-light" data-confirm="{{__('"Do you want to recovery?"')}}">{{__("Recovery")}}</a>
                @endif
                @if(Auth::user()->hasPermissionTo('job_delete'))
                    <a href="{{ route("job.vendor.delete",[$row->id]) }}" class="btn btn-danger" data-confirm="{{__('"Do you want to delete?"')}}>">{{__("DELETE")}}</a>
                @endif
                @if($row->status == 'publish')
                    <a href="{{ route("job.vendor.bulk_edit",[$row->id,'action' => "make-hide"]) }}" class="btn btn-light">{{__("CLOSE")}}</a>
                @endif
                @if(Auth::user()->hasPermissionTo('job_update'))
                    <a href="{{ route("job.vendor.edit",[$row->id]) }}" class="btn btn-light">{{__("EDIT")}}</a>
                @endif
                {{-- @if($row->status == 'draft')
                    <a href="{{ route("job.vendor.bulk_edit",[$row->id,'action' => "make-publish"]) }}" class="btn btn-success">{{__("Make publish")}}</a>
                @endif --}}
            </div>
        </div>
    </div>
</div>
