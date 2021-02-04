<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">Dates</h6>
        <span></span>
    </div>
</div>
<div class="row">                
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__("InternShip Starts")}}</label>
            <input  name="start_at" type="date" value="{{$row->start_at}}" placeholder="{{__("Start Date")}}" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__("Duration-Month")}}</label>
            <input name="duration" class="form-control" type="number" value="{{ $row->duration }}" placeholder="{{__('between 1-6 months')}}" min="1" max="6">
        </div>
    </div>
</div>
@php
$salary = json_decode($row->salary);
if(!isset($salary->main)){
    $salary = [
        'main'=>''
    ]; 
    $salary = json_decode(json_encode($salary));  
}
@endphp
<div class="row job-salary">
    <div class="col-12">
        <div class="form-group">
            <label for="salary">{{__('Salary ( Only for Internships and Summer Jobs )')}}</label>
        </div>
    </div>
    <div class="col-md-4">
        According to agreement
        <input type="radio" name="salary[main]" value="all" class="form-control"  
            @if($salary->main == 'all') checked @endif
            @if(!$row->id) checked @endif
        >
    </div>
    <div class="col-md-4" style="display: flex" >
        Hourly
        <input type="radio" name="salary[main]" value="hourly" class="form-control input-radio hourly"
            @if($salary->main == 'hourly') checked @endif    
        >
        <input type="number" name="salary[hourly]" id="" class="form-control input-number hourly" 
        @if($salary->main == 'hourly') value="{{$salary->hourly}}" @else disabled @endif
        >
    </div>
    <div class="col-md-4" style="display: flex" >
        Monthly
        <input type="radio" name="salary[main]" value="monthly" class="form-control input-radio monthly"
            @if($salary->main == 'monthly') checked @endif
        >
        <input type="number" name="salary[monthly]" id="" class="form-control input-number monthly" 
            @if($salary->main == 'monthly') value="{{$salary->monthly}}" @else disabled @endif
        >
    </div>
</div>
