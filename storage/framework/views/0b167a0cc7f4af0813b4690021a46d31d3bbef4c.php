<div class="bravo-list-job">
    <div class="container">
        <?php if($title): ?>
        <div class="title">
            <?php echo e($title); ?>

        </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-md-9 cards pl-0">
                
                <div class="col-xl-6 float-left">
                    <?php echo $__env->make('Job::frontend.layouts.search.loop-list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
                <div class="col-xl-6 float-left">
                    <div class="item-loop-list">
                        <div class="item-header">
                            <span class="img">
                                <a href="#">
                                    <img src="images/item-loop-img1.svg">
                                </a>
                            </span>
                            <span class="post_name">Mercedes-Benz</span>
                            <span class="published_date">3 days ago</span>
                        </div>
                        <div class="item-body">Head of Third Party Strategy and Deals, Go-to-Market</div>
                        <div class="item-footer">
                            <div class="location">
                                <i class="fa fa-map-marker"></i>
                                Espoo
                            </div>
                            <div class="job-type">
                                <i class="fa fa-circle SummerJob"></i>
                                Summer job
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-xl-6 float-left">
                    <div class="item-loop-list-2x">
                        <div class="item-header">
                            <span class="img">
                                <a href="#">
                                    <img src="images/item-loop-img2.svg" alt="">
                                </a>
                            </span>
                            <span class="post_name">McDonald’s</span>
                        </div>
                        <div class="item-body">
                            <div class="body-top">
                                <div class="location">
                                    <i class="fa fa-map-marker"></i>
                                    Helsinki
                                </div>
                                <div class="job-type">
                                    <i class="fas fa-chart-bar"></i>
                                    Restaurant & Bar
                                </div>
                            </div>
                            <div class="body-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce cursus convallis congue. Nulla varius orci nisi, varius convallis sapien sollicitudin non. Integer at felis magna. Nullam vitae interdum velit.Curabitur urna lorem, varius sit amet diam nec, aliquam cursus diam. Donec rhoncus mi et elementum imperdiet. 
                            </div>
                        </div>
                        <div class="item-footer">
                            <div class="row m-0">
                                <div class="col-md-4 footer-txt pt-3 p-0">
                                    5 job openings
                                </div>
                                <div class="col-md-8">
                                    <button class="btn btn-danger form-control">
                                        <i class="fas fa-user-edit"></i>
                                        Apply Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 float-left">
                    <div class="item-loop-list">
                        <div class="item-header">
                            <span class="img">
                                <a href="#">
                                    <img src="images/item-loop-img3.svg">
                                </a>
                            </span>
                            <span class="post_name">Microsoft</span>
                            <span class="published_date">3 days ago</span>
                        </div>
                        <div class="item-body">G Suite Specialist, Google Cloud Customer Engineering</div>
                        <div class="item-footer">
                            <div class="location">
                                <i class="fa fa-map-marker"></i>
                                Helsinki
                            </div>
                            <div class="job-type">
                                <i class="fa fa-circle Internship"></i>
                                Intern
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-xl-6 float-left">
                    <div class="item-loop-list">
                        <div class="item-header">
                            <span class="img">
                                <a href="#">
                                    <img src="images/item-loop-img4.svg">
                                </a>
                            </span>
                            <span class="post_name"> Ebay</span>
                            <span class="published_date">3 days ago</span>
                        </div>
                        <div class="item-body">Sales Engineer, Application Modernization, Healthcare, Google Cloud</div>
                        <div class="item-footer">
                            <div class="location">
                                <i class="fa fa-map-marker"></i>
                                Vantaa
                            </div>
                            <div class="job-type">
                                <i class="fa fa-circle SummerJob"></i>
                                Summer job
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="col-md-3 px-0">
                <a href="<?php echo e($ads_link); ?>" target="_blank" style="text-decoration: none;">
                    <div class="card ads-iamge">
                        
                        <img src="images/advertise.png" alt="">
                    </div>
                </a>
                <div class="daily">
                    <div class="mount">+148</div>
                    <div class="txt">
                        Daily jobs :
                        <a href="#">Explore more <i class="fa fa-chevron-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><?php /**PATH D:\Task\2021-05-08(Vargar@250$)\modules/Job/Views/frontend/blocks/list-job/index.blade.php ENDPATH**/ ?>