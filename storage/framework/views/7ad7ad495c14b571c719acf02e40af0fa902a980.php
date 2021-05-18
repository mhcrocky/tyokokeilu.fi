<?php if(is_default_lang()): ?>
    <div class="row">
        <div class="col-sm-4">
            <h3 class="form-group-title"><?php echo e(__('Mobile Layout')); ?></h3>
        </div>
        <div class="col-sm-8">
            <div class="panel">
                <div class="panel-body">
                    <div class="form-group">
                        <label ><?php echo e(__("Choose Layout for Mobile app")); ?></label>
                        <div class="form-controls">
                            <?php
                            $template = \Modules\Template\Models\Template::find(setting_item('api_app_layout'));
                            \App\Helpers\AdminForm::select2('api_app_layout',[
                                'configs'=>[
                                    'ajax'=>[
                                        'url'=>url('/admin/module/template/getForSelect2'),
                                        'dataType'=>'json'
                                    ]
                                ]
                            ],
                                !empty($template->id) ? [$template->id,$template->title] :false
                            )
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>
<?php /**PATH /home/znwaqgrx/public_html/modules/Api/Views/admin/settings/api.blade.php ENDPATH**/ ?>