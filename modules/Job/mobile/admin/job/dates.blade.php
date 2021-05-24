<div class="col-md-6">
    <div class="form-group">
        <label for="start_at" class="required">{{__("InternShip Starts")}}</label>
        <input  name="start_at" type="date" value="{{$row->start_at}}" placeholder="{{__("Start Date")}}" class="form-control" required>
    </div>
</div>
<div class="col-md-6">
    <div class="form-group">
        <label for="duration" class="required">{{__("Duration-Month")}}</label>
        <input name="duration" class="form-control required" type="number" value="{{ $row->duration }}" placeholder="{{__('between 1-6 months')}}" min="1" max="6" required>
    </div>
</div>


