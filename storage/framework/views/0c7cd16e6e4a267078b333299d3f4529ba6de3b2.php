
<?php $__env->startSection('content'); ?>
    <h2 class="title-bar">
        <?php echo e(__("Update verification data")); ?>
    </h2>
    <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="booking-history-manager">
        <form action="<?php echo e(route("user.verification.store")); ?>" method="post">
            <?php echo csrf_field(); ?>
            <?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php switch($field['type']):
                    case ("email"): ?>
                    <?php echo $__env->make('User::frontend.verification.fields.email', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php break; ?>
                    <?php case ("phone"): ?>
                    <?php echo $__env->make('User::frontend.verification.fields.phone', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php break; ?>
                    <?php case ("file"): ?>
                    <?php echo $__env->make('User::frontend.verification.fields.file', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php break; ?>
                    <?php case ("multi_files"): ?>
                    <?php echo $__env->make('User::frontend.verification.fields.multi_files', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php break; ?>
                    <?php case ('text'): ?>
                    <?php default: ?>
                    <?php echo $__env->make('User::frontend.verification.fields.text', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php break; ?>
                <?php endswitch; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <hr>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <button class="btn btn-success"> <i class="fa fa-save"></i> <?php echo e(__("Save changes")); ?> </button>
                </div>
            </div>
        </form>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
    <!-- Modal -->
    <div class="modal fade" id="modalVerifyPhone" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><?php echo e(__('Verify Phone')); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="text" name="verified_phone_code" class="form-control" id="verified_phone_code">
                    <input type="hidden" name="verified_phone" class="form-control" id="verified_phone">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                    <button type="button" onclick="verifyPhone()" class="btn btn-primary"><?php echo e(__('Verify')); ?></button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var ajaxReady = 1;
        var phone ='';
        function sendCodeVerifyPhone(inputName,inputLabel) {
            if(ajaxReady==1){
                phone = $("input[name='"+inputName+"']").val();
    
                $.ajax({
                    url: '<?php echo e(route('user.verification.phone.sendCode')); ?>',
                    data: {
                        phone: phone,
                        inputName: inputName,
                        inputLabel: inputLabel,
                        _token: "<?php echo e(csrf_token()); ?>",
                    },
                    dataType: 'json',
                    type: 'post',
                    beforeSend: function (xhr) {
                        ajaxReady = 0;
                    },
                    success: function (res) {
                        if(res.status==1){
                            if(res.verified==1){
                                alert(res.message)
                            }
                            if(res.action=='openModalVerify'){
                                $("#modalVerifyPhone").modal('toggle');
    
                            }
                        }else{
                            alert(res.message)
    
                        }
                        ajaxReady = 1;
    
                    },
                    error:function () {
                        ajaxReady = 1;
                    }
                })
            }
        }
        
        function verifyPhone() {
                var code = $("#verified_phone_code").val();
                $.ajax({
                    url: '<?php echo e(route('user.verification.phone.field')); ?>',
                    data: {
                        code: code,
                        _token: "<?php echo e(csrf_token()); ?>",
                    },
                    dataType: 'json',
                    type: 'post',
                    success: function (res) {
                        if(res.status==1){
                            $("#modalVerifyPhone").modal('toggle');
                            window.location.reload();
                        }else{
                            alert(res.message)
                        }
                    }
                })
    
        }
    </script>

    

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/User/Views/frontend/verification/update.blade.php ENDPATH**/ ?>