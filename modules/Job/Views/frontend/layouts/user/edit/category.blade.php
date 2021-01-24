<div class="col-12">
    <h5>General</h5>
    <hr/>
</div>
<div class="col-md-6 pt-1 pb-2">
    <div class="">
        <label class="control-label">{{__("Job Type")}}</label>
        <select name="type" class="form-control">
            <option value="">{{__("Select Type")}}</option>
            <option value="SummerJob">{{__("SummerJob")}}</option>
            <option value="Practice">{{__("Practice")}}</option>
            <option value="Internship">{{__("Internship")}}</option>
        </select>
    </div>
</div>
<div class="col-md-6 pt-1 pb-2">
    <div class="">
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

<div class="col-md-12 pt-1 pb-2">
    <?php 
    $work_exp  = json_decode($row->work_exp);
    ?>
    <div class="form-group flex">
        <h3 class="panel-body-title pb-1">Wrok Experiences</h3>
        <div>
            <label class="work_exp">
                No
                <input type="checkbox" name="work_exp[no]" value="1" @if(isset($work_exp->no)) checked @endif>
            </label>
            <label class="work_exp">
                Yes
                <input type="checkbox" name="work_exp[yes]" value="1" @if(isset($work_exp->yes)) checked @endif>
            </label>
            <label class="work_exp">
                0-1 Year
                <input type="checkbox" name="work_exp[y01]" value="1" @if(isset($work_exp->y01)) checked @endif>
            </label>
            <label class="work_exp">
                1-5 Years           
                <input type="checkbox" name="work_exp['y15']" value="1" @if(isset($work_exp->y15)) checked @endif>
            </label>
            <label class="work_exp">
                More Then 5years    
                <input type="checkbox" name="work_exp['ym5']" value="1" @if(isset($work_exp->ym5)) checked @endif>
            </label>
        </div>
    </div>
</div>
<style>
.work_exp{
    padding: 0px 5px;
}    
</style>