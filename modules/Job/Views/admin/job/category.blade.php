<div class="col-md-4 pt-1 pb-2">
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
<div class="col-md-8 pt-1 pb-2 px-5">
    <?php 
    $work_exp  = $row->work_exp;
    ?>
    <div class="form-group flex">
        <h3 class="panel-body-title pb-1">Wrok Experiences</h3>
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
<style>
.work_exp{
    padding: 0px 10px;
}    
</style>