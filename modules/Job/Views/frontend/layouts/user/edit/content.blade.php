
<div class="mt-5">
    <label class="heading">1.Job information</label>
    <div class="row detail">                
        <div class="col-md-12">
            <div class="form-group">
                <label for="title" class="required" >{{__("Job title")}}</label>
                <input type="text" value="{{$translation->title}}" placeholder="{{__("Job Title")}}" name="title" class="form-control required" required>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label required">{{__("Description")}}</label>
                <div class="" style="border-radius: 10px">
                    <textarea name="content" class="col-md-12" rows="10">{{$translation->content}}</textarea>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
.tox.tox-tinymce{
    border-radius: 10px;
}  
</style>
