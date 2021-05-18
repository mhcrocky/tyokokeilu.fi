          
    <div class="col-md-6 pt-3">
        <div class="form-group">
            <label><?php echo e(__("Phone")); ?></label>
            <input name="contact_phone" class="form-control" type="text" value="<?php echo e($row->contact_phone); ?>" >
        </div>
    </div>
    <div class="col-md-6 pt-3">
        <div class="form-group">
            <label for="coontact_email required"><?php echo e(__("Email")); ?></label>
            <input  name="contact_email" type="email" value="<?php echo e($row->contact_email); ?>" class="form-control required" required>
        </div>
    </div>
    <div class="col-md-8">
        <div class="form-group">
            <label class="control-label required"><?php echo e(__("Work address")); ?></label>
            <input type="text" required name="address" id="customPlaceAddress" class="form-control required" placeholder="<?php echo e(__("Real address")); ?>" value="<?php echo e($translation->address); ?>">
        </div>
    </div>
    <div class="col-md-4">
        <?php if(is_default_lang()): ?>
            <div class="form-group">
                <label for="location_id" class="control-label required"><?php echo e(__("City")); ?></label>
                <div class="">
                    <select name="location_id" class="form-control required" required>
                        <option value=""><?php echo e(__("Select City")); ?></option>
                        <?php
                        $traverse = function ($locations, $prefix = '') use (&$traverse, $row) {
                            foreach ($locations as $location) {
                                $selected = '';
                                if ($row->location_id == $location->id)
                                    $selected = 'selected';
                                printf("<option value='%s' %s>%s</option>", $location->id, $selected, $prefix . ' ' . $location->name);
                                $traverse($location->children, $prefix . '-');
                            }
                        };
                        $traverse($job_location);
                        ?>
                    </select>
                </div>
            </div>
        <?php endif; ?>
    </div><?php /**PATH D:\jobportal.sql\modules/Job/Views/admin/job/contact.blade.php ENDPATH**/ ?>