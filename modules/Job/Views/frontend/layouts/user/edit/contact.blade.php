<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">Contact</h6>
        <span></span>
    </div>
</div>
<div class="row">                
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__("Phone")}}</label>
            <input name="contact_phone" class="form-control" type="text" value="{{ $row->contact_phone }}" >
            <i class="fa fa-phone input-icon"></i>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__("Email")}}</label>
            <input  name="contact_email" type="email" value="{{$row->contact_email}}" class="form-control">
            <i class="fa fa-envelope input-icon"></i>        
        </div>
    </div>
</div>