<div class="form-group">
    <label>{{__("Name")}}</label>
    <input type="text" value="{{$translation->name}}" placeholder="{{__("Category name")}}" name="name" class="form-control">
</div>
@if(is_default_lang())
    <div class="form-group">
        <label>{{__('Hide in detail service')}}</label>
        <br>
        <label>
            <input type="checkbox" name="hidden" @if($row->hidden) checked @endif value="1"> {{__("Enable hide")}}
        </label>
    </div>
@endif
<div class="panel">
    <div class="panel-title"><strong>{{__('Feature Image')}}</strong></div>
    <div class="panel-body">
        <div class="form-group">
            {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id) !!}
        </div>
    </div>
</div>