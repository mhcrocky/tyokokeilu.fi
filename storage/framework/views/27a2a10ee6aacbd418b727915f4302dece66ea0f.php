
<?php $__env->startSection('script.head'); ?>
    <style type="text/css">
        .select2-container.select2-container--open .select2-dropdown {
            min-width: 220px !important;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="container-fluid">
        <div class="d-flex justify-content-between mb20">
            <h1 class="title-bar"><?php echo e(__('Bookings Statistic')); ?></h1>
        </div>
        <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="bravo-statistic">
            <div class="row">
                <div class="col-md-12">
                    <form action="" class="form-fiter-statistic">
                        <div class="header-statistic">
                            <div class="item">
                                <?php echo e(__("Filter:")); ?>
                            </div>
                            <div class="item no-padding">
                                <div class="group-icon">
                                    <select name="user_type">
                                        <option value=""><?php echo e(__("-- User Type --")); ?></option>
                                        <option value="customer"><?php echo e(__("Customer User")); ?></option>
                                        <option value="vendor"><?php echo e(__("Vendor User")); ?></option>
                                    </select>
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </div>
                            </div>
                            <div class="item no-padding">
                                <div class="group-icon">
                                    <?php
                                    $user = !empty(Request()->user_id) ? App\User::find(Request()->user_id) : false;
                                    \App\Helpers\AdminForm::select2('user_id', [
                                        'configs' => [
                                            'ajax'        => [
                                                'url' => url('/admin/module/user/getForSelect2'),
                                                'dataType' => 'json'
                                            ],
                                            'allowClear'  => true,
                                            'placeholder' => __('-- Select User --')
                                        ]
                                    ], !empty($user->id) ? [
                                        $user->id,
                                        $user->getDisplayName() . ' (#' . $user->id . ')'
                                    ] : false)
                                    ?>
                                </div>
                            </div>
                            <div class="item">
                                <div id="reportrange">
                                    <i class="fa fa-calendar"></i>&nbsp;
                                    <span></span>
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    <input type="hidden" name="from">
                                    <input type="hidden" name="to">
                                </div>
                            </div>
                            <div class="item">
                                <button type="submit" class="btn-submit"><?php echo e(__("Apply")); ?>
                                    <i class="fa fa-spinner fa-pulse fa-fw"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row row-eq-height">
                <div class="col-md-8">
                    <div class="g-statistic">
                        <div class="head">
                            <?php echo e(__("Bookings Statistic")); ?>
                        </div>
                        <div class="content">
                            <canvas id="earning_chart"></canvas>
                            <script>
                                var earning_chart_data = <?php echo json_encode($earning_chart_data); ?>;
                                var earning_detail_data = <?php echo json_encode($earning_detail_data); ?>;
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="g-statistic">
                        <div class="head">
                            <?php echo e(__("Detail statistics")); ?>
                        </div>
                        <div class="content">
                            <div class="list-detail">
                                <?php if(!empty($earning_detail_data)): ?>
                                    <?php $__currentLoopData = $earning_detail_data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$detail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="item item-<?php echo e($key); ?>">
                                            <span><?php echo e($detail['title']); ?>: </span> <?php echo e($detail['val']); ?>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script.body'); ?>
    <script src="<?php echo e(url('libs/chart_js/Chart.min.js')); ?>"></script>
    <script src="<?php echo e(url('libs/daterange/moment.min.js')); ?>"></script>
    <script src="<?php echo e(url('libs/daterange/daterangepicker.min.js?_ver='.config('app.version'))); ?>"></script>
    <link rel="stylesheet" href="<?php echo e(url('libs/daterange/daterangepicker.css')); ?>"/>

    <script>
        jQuery(function ($) {
            var ctx = document.getElementById('earning_chart').getContext('2d');
            window.myMixedChart = new Chart(ctx, {
                type: 'bar',
                data: earning_chart_data,
                options: {
                    responsive: true,
                    title: {
                        display: false,
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false,
                    },
                    scales: {
                        xAxes: [{
                            stacked: true,
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: '<?php echo e(__("Timeline")); ?>'
                            }
                        }],
                        yAxes: [{
                            stacked: true,
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: '<?php echo e(__("Currency: :currency_main",['currency_main'=>setting_item('currency_main')])); ?>'
                            },
                            ticks: {
                                beginAtZero: true,
                            }
                        }]
                    },
                    tooltips: {
                        callbacks: {
                            label: function (tooltipItem, data) {
                                var label = data.datasets[tooltipItem.datasetIndex].label || '';
                                if (label) {
                                    label += ': ';
                                }
                                label += tooltipItem.yLabel + " (<?php echo e(setting_item('currency_main')); ?>)";
                                return label;
                            }
                        }
                    }
                }
            });
            var start = moment().startOf('week');
            var end = moment();

            function cb(start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                $('#reportrange input[name=from]').val(start.format('YYYY-MM-DD'));
                $('#reportrange input[name=to]').val(end.format('YYYY-MM-DD'));
            }

            $('#reportrange').daterangepicker({
                startDate: start,
                endDate: end,
                "alwaysShowCalendars": true,
                "opens": "center",
                "showDropdowns": true,
                ranges: {
                    '<?php echo e(__("Today")); ?>': [moment(), moment()],
                    '<?php echo e(__("Yesterday")); ?>': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '<?php echo e(__("Last 7 Days")); ?>': [moment().subtract(6, 'days'), moment()],
                    '<?php echo e(__("Last 30 Days")); ?>': [moment().subtract(29, 'days'), moment()],
                    '<?php echo e(__("This Month")); ?>': [moment().startOf('month'), moment().endOf('month')],
                    '<?php echo e(__("Last Month")); ?>': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    '<?php echo e(__("This Year")); ?>': [moment().startOf('year'), moment().endOf('year')],
                    '<?php echo e(__('This Week')); ?>': [moment().startOf('week'), end]
                }
            }, cb).on('apply.daterangepicker', function (ev, picker) {
                $('#reportrange input[name=from]').val(picker.startDate.format('YYYY-MM-DD'));
                $('#reportrange input[name=to]').val(picker.endDate.format('YYYY-MM-DD'));
            });
            cb(start, end);
            $('.form-fiter-statistic').submit(function (e) {
                e.preventDefault(); // avoid to execute the actual submit of the form.
                var form = $(this);
                $.ajax({
                    url: '<?php echo e(url('admin/module/report/statistic/reloadChart')); ?>',
                    data: form.serialize(),
                    dataType: 'json',
                    type: 'post',
                    beforeSend: function () {
                        form.addClass("loading");
                    },
                    success: function (res) {
                        form.removeClass("loading");
                        if (res.status) {
                            window.myMixedChart.data = res.chart_data;
                            window.myMixedChart.update();
                            $(".bravo-statistic .list-detail").html("");
                            for (var item_id in res.detail_data) {
                                var item = res.detail_data[item_id];
                                $(".bravo-statistic .list-detail").append("<div class='item'><span>" + item.title + ": </span> " + item.val + "</div>");
                            }
                        }
                    }
                })
            })
        })
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\modules/Report/Views/admin/statistic/index.blade.php ENDPATH**/ ?>