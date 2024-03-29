               
    <div class="col-md-4">
        <div class="form-group">
            <label class="control-label required">{{__("Job Type")}}</label>
            <select name="job_type" class="form-control required" required>
                <option value="">{{__("Select Type")}}</option>
                <option value="SummerJob" @if ($row->job_type === 'SummerJob') selected @endif >{{__("SummerJob")}}</option>
                <option value="Practice" @if ($row->job_type === 'Practice') selected @endif >{{__("Practice")}}</option>
                <option value="Internship" @if ($row->job_type === 'Internship') selected @endif >{{__("Internship")}}</option>
            </select>
        </div>
    </div>
    <div class="col-md-5">
        <div class="form-group">
            <label class="control-label required">{{__("Category")}}</label>
            <select name="category_id" class="form-control required" required>
                <option value="">{{__("Select Category")}}</option>
                <?php
                $traverse = function ($categories , $prefix = '') use (&$traverse, $row) {
                    foreach ($categories as $category) {
                        $selected = '';
                        if ($row->category_id == $category->id)
                            $selected = 'selected';
                        printf("<option value='%s' %s>%s</option>", $category->id, $selected, $prefix . ' ' . $category->name);
                    }
                };
                $traverse($categories);
                ?>
            </select>
        </div>
    </div>              
    <div class="col-md-12 pt-2 pb-2">
        <?php 
        $work_exp  = $row->work_exp;
        ?>
        <div class="form-group flex">
                <label class="control-label">Wrok Experiences</label>
            <div>
                <label class="work_exp">
                    No
                    <input type="radio" name="work_exp" value="no" @if(!$row->id) checked @endif @if($work_exp=='no') checked @endif>
                </label>
                <label class="work_exp">
                    0-1 Year
                    <input type="radio" name="work_exp" value="y01" @if($work_exp=='y01') checked @endif>
                </label>
                <label class="work_exp">
                    1-5 Years           
                    <input type="radio" name="work_exp" value="y15" @if($work_exp=='y15') checked @endif>
                </label>
                <label class="work_exp">
                    More Then 5years    
                    <input type="radio" name="work_exp" value="ym5" @if($work_exp=='ym5') checked @endif>
                </label>
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
<div class="col-12 job-salary pt-3" @if($row->job_type =='Practice') style="display: none;" @endif>
    <div class="form-group">
        <label for="salary" class="required">{{__('Salary ( Only for Internships and Summer Jobs )')}}</label>
    </div>
</div>
<div class="col-md-4 job-salary">
    According to agreement
    <input type="radio" name="salary[main]" value="all" class="form-control"  
        @if($salary->main == 'all'|| $salary->main == '' || !$row->id) checked @endif
    >
</div>
<div class="col-md-4 job-salary" style="display: flex" >
    Hourly
    <input type="radio" name="salary[main]" value="hourly" class="form-control input-radio hourly"
        @if($salary->main == 'hourly') checked @endif    
    >
    <input type="number" name="salary[hourly]"  class="form-control input-number hourly" 
    @if($salary->main == 'hourly') value="{{$salary->hourly}}" @else disabled @endif
    >
</div>
<div class="col-md-4 job-salary" style="display: flex" >
    Monthly
    <input type="radio" name="salary[main]" value="monthly" class="form-control input-radio monthly"
        @if($salary->main == 'monthly') checked @endif
    >
    <input type="number" name="salary[monthly]"  class="form-control input-number monthly" 
        @if($salary->main == 'monthly') value="{{$salary->monthly}}" @else disabled @endif
    >
</div>
<style>
.input-radio {
    position: relative;
    top: 0.5rem;
    left: 0.25rem;
}  
.input-number {
    position: relative;
    top: -0.5rem;
    left: 0.5rem;
}
</style>