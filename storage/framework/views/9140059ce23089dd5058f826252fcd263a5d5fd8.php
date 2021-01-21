<div id="Job-rooms" class="job_rooms_form" v-cloak="" :class="{'d-none':enquiry_type!='book'}">
    <h3 class="heading-section"><?php echo e(__('Available Rooms')); ?></h3>
    <div class="nav-enquiry" v-if="is_form_enquiry_and_book">
        <div class="enquiry-item active" >
            <span><?php echo e(__("Book")); ?></span>
        </div>
        <div class="enquiry-item" data-toggle="modal" data-target="#enquiry_form_modal">
            <span><?php echo e(__("Enquiry")); ?></span>
        </div>
    </div>
    <div class="form-book">
        <div class="form-search-rooms">
            <div class="d-flex form-search-row">
                <div class="col-md-4">
                    <div class="form-group form-date-field form-date-search " @click="openStartDate" data-format="<?php echo e(get_moment_date_format()); ?>">
                        <i class="fa fa-angle-down arrow"></i>
                        <input type="text" class="start_date" ref="start_date" style="height: 1px; visibility: hidden">
                        <div class="date-wrapper form-content" >
                            <label class="form-label"><?php echo e(__("Check In - Out")); ?></label>
                            <div class="render check-in-render" v-html="start_date_html"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <i class="fa fa-angle-down arrow"></i>
                        <div class="form-content dropdown-toggle" data-toggle="dropdown">
                            <label class="form-label"><?php echo e(__('Guests')); ?></label>
                            <div class="render">
                                <span class="adults" >
                                    <span class="one" >{{adults}}
                                        <span v-if="adults < 2"><?php echo e(__('Adult')); ?></span>
                                        <span v-else><?php echo e(__('Adults')); ?></span>
                                    </span>
                                </span>
                                -
                                <span class="children" >
                                    <span class="one" >{{children}}
                                        <span v-if="children < 2"><?php echo e(__('Child')); ?></span>
                                        <span v-else><?php echo e(__('Children')); ?></span>
                                    </span>
                                </span>
                            </div>
                        </div>
                        <div class="dropdown-menu select-guests-dropdown" >
                            <div class="dropdown-item-row">
                                <div class="label"><?php echo e(__('Adults')); ?></div>
                                <div class="val">
                                    <span class="btn-minus2" data-input="adults" @click="minusPersonType('adults')"><i class="icon ion-md-remove"></i></span>
                                    <span class="count-display"><input type="number" v-model="adults" min="1"/></span>
                                    <span class="btn-add2" data-input="adults" @click="addPersonType('adults')"><i class="icon ion-ios-add"></i></span>
                                </div>
                            </div>
                            <div class="dropdown-item-row">
                                <div class="label"><?php echo e(__('Children')); ?></div>
                                <div class="val">
                                    <span class="btn-minus2" data-input="children" @click="minusPersonType('children')"><i class="icon ion-md-remove"></i></span>
                                    <span class="count-display"><input type="number" v-model="children" min="0"/></span>
                                    <span class="btn-add2" data-input="children" @click="addPersonType('children')"><i class="icon ion-ios-add"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-btn">
                    <div class="g-button-submit">
                        <button class="btn btn-primary btn-search" @click="checkAvailability" :class="{'loading':onLoadAvailability}" type="submit">
                            <?php echo e(__("Check Availability")); ?>

                            <i v-show="onLoadAvailability" class="fa fa-spinner fa-spin"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $__env->make("Booking::frontend.global.enquiry-form",['service_type'=>'Job'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/details/Job-rooms.blade.php ENDPATH**/ ?>