<div class="col-md-4 pt-2 pb-3">
    <div class="form-group">
        <label>{{__("InternShip Starts")}}</label>
        <input  name="start_at" type="date" value="{{$row->start_at}}" placeholder="{{__("Start Date")}}" class="form-control">
    </div>
</div>
<div class="col-md-5 pt-2 pb-3 px-5">
    <div class="form-group">
        <label>{{__("Duration-Month")}}</label>
        <input name="duration" class="form-control" type="number" value="{{ $row->duration }}" placeholder="{{__('between 1-6 months')}}" min="1" max="6">
    </div>
</div>