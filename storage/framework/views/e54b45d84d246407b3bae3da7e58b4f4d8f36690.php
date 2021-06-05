
<?php
	use Jenssegers\Agent\Agent as Agent;
	$Agent = new Agent();
?>
<div class="bravo_subscribe">
	<div class="container">
			<?php if($Agent->isMobile()): ?>
			<div class="subscribe-inner">
				<div class="col-sm-12 subscribe_thumb_image"></div>
				<div id="carouselNote" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselNote" data-slide-to="0" class="active"></li>
						<li data-target="#carouselNote" data-slide-to="1"></li>
						<li data-target="#carouselNote" data-slide-to="2"></li>
						<li data-target="#carouselNote" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="note">
								<div class="quote">
									<span><i class="fa fa-quote-right"></i> </span>
								</div>
								<div class="content">
									Moving to a new place is scary, but using Työkokeilu to find a job within one week of moving in has been such a blessing to me and my family!
								</div>
								<div class="writer">James Lyons, <span style="color:#8E8C95;">Finace</span></div>
							</div> 
						</div>
						<div class="carousel-item">
							<div class="note">
								<div class="quote">
									<span><i class="fa fa-user"></i> </span>
								</div>
								<div class="content">
									Welcome
								</div>
								<div class="writer">James Lyons, <span style="color:#8E8C95;">Finace</span></div>
							</div> 
						</div>
						<div class="carousel-item">
							<div class="note">
								<div class="quote">
									<span><i class="fa fa-user"></i> </span>
								</div>
								<div class="content">
									Welcome1
								</div>
								<div class="writer">James Lyons, <span style="color:#8E8C95;">Finace</span></div>
							</div> 
						</div>
						<div class="carousel-item">
							<div class="note">
								<div class="quote">
									<span><i class="fa fa-user"></i> </span>
								</div>
								<div class="content">
									Welcome2
								</div>
								<div class="writer">James Lyons, <span style="color:#8E8C95;">Finace</span></div>
							</div> 
						</div>
					</div>
					<div class="carousel-control">
						<a href="#carouselNote" class="mr-3" role="button" data-slide="prev">
							<span class="fas fa-angle-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="" href="#carouselNote" role="button" data-slide="next">
							<span class="fas fa-angle-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			<?php else: ?>
			<div class="row subscribe-inner">
				<div class="col-md-4">
				</div>
				<div class="col-md-8 col-sm-12 subscribe_thumb_image" style="background-image:url('/images/jame.png') !important; background-size:100% 100%;"></div>
				<div class="note">
					<div class="quote">
						<span><i class="fa fa-quote-right"></i> </span>
					</div>
					<div class="content">
						Moving to a new place is scary, but using Työkokeilu to find a job within one week of moving in has been such a blessing to me and my family!
					</div>
					<div class="writer">James Lyons, <span style="color:#8E8C95;">Finace</span></div>
				</div>            
			<?php endif; ?>
		</div>
	</div>
</div><?php /**PATH D:\Task\2021-05-08(Vargar@250$)\modules/Layout/parts/subscribe.blade.php ENDPATH**/ ?>