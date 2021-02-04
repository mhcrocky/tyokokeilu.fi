<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">General</h6>
        <span></span>
    </div>
</div>
<div class="row">                
    <div class="col-md-6">
        <div class="form-group">
            <label class="control-label">{{__("Job Type")}}</label>
            <select name="job_type" class="form-control">
                <option value="">{{__("Select Type")}}</option>
                <option value="SummerJob" @if ($row->job_type === 'SummerJob') selected @endif >{{__("SummerJob")}}</option>
                <option value="Practice" @if ($row->job_type === 'Practice') selected @endif >{{__("Practice")}}</option>
                <option value="Internship" @if ($row->job_type === 'Internship') selected @endif >{{__("Internship")}}</option>
            </select>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label class="control-label">{{__("Category")}}</label>
            <select name="category_id" class="form-control">
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
</div>
<div class="row">                
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
</div>