
<?php
	use Jenssegers\Agent\Agent as Agent;
	$Agent = new Agent();	
?>
<div class="bravo_company">
	<div class="container">
		<div class="heading">Companies we’ve helped to hire the best candidate</div>
			<?php if($Agent->isMobile()): ?>
			<div class="content">
				<div class="left">
					<p>We have end-to-end solutions that can keep up with</p>
					<p>you and your standards.</p>
					<a href="#" class="btn btn-danger">Post a Job</a>
				</div>
				<div class="pic"></div>
				<div class="cards">
					<div class="window">
					  <div id="company" class="text-center">
						<div class="card-item">
							<div style="background: url(images/Uber.svg); background-size:100% 100%; height:36px;"></div>
							<div class="mt-5">We have end-to-end solutions that can keep up with you and your standards.</div>
						</div>
						<div class="card-item">
							<div style="padding: 0px 40px 0px 40px">
								<div style=" background-color: #88C129; height:36px;"></div>
							</div>
							<div class="mt-5">We hav end-to-end solutions that can keep up with you and your standards.</div>
						</div>
						<div class="card-item">
							<div style="padding: 0px 30px 0px 30px">
								<div style="height:36px; background-image: url(images/airbnb.svg);background-size:100% 100%; " ></div>
							</div>
							<div class="mt-5">We have end-to-end solutions that can keep up with you and your standards.</div>
						</div>
					  </div>
					</div>
				</div>
			</div>
			<?php else: ?>
			<div class="content row">
				<div class="col-md-5" style="background-image: url(images/company.png); background-size:100% 100%; height:478px;"></div>
				<div class="col-md-7 left">
					<p>We have end-to-end solutions that can keep up with</p>
					<p>you and your standards.</p>
					<a href="#" class="btn btn-danger">Post a Job</a>
				</div>
			</div>
			<div class="cards text-center">
				<div class="card-item float-left">
					<div style="background: url(images/Uber.svg); background-size:100% 100%; height:36px;"></div>
					<div class="mt-5">We have end-to-end solutions that can keep up with you and your standards.</div>
				</div>
				<div class="card-item ml-5 float-left">
					<div style="padding: 0px 40px 0px 40px">
						<div style=" background-color: #88C129; height:36px;"></div>
					</div>
					<div class="mt-5">We hav end-to-end solutions that can keep up with you and your standards.</div>
				</div>
				<div class="card-item ml-5 float-left">
					<div style="padding: 0px 30px 0px 30px">
						<div style="height:36px; background-image: url(images/airbnb.svg);background-size:100% 100%; " ></div>
					</div>
					<div class="mt-5">We have end-to-end solutions that can keep up with you and your standards.</div>
				</div>
			</div>
		<?php endif; ?>
	</div>
</div>
<script>
	$(document).ready(function(){
		var company = $('#company'),
    threshold = 130,
    slideWidth = 221,
    dragStart, 
    dragEnd;

$('#c_next').click(function(){ shiftSlide(-1) })
$('#c_prev').click(function(){ shiftSlide(1) })

company.on('mousedown', function(){
  if (company.hasClass('transition')) return;
  dragStart = event.pageX;
  $(this).on('mousemove', function(){
    dragEnd = event.pageX;
    $(this).css('transform','translateX('+ dragPos() +'px)')
  })
  $(document).on('mouseup', function(){
    if (dragPos() > threshold) { return shiftSlide(1) }
    if (dragPos() < -threshold) { return shiftSlide(-1) }
    shiftSlide(0);
  })
});

function dragPos() {
  return dragEnd - dragStart;
}

function shiftSlide(direction) {
  if (company.hasClass('transition')) return;
  dragEnd = dragStart;
  $(document).off('mouseup')
  company.off('mousemove')
          .addClass('transition')
          .css('transform','translateX(' + (direction * slideWidth) + 'px)'); 
  setTimeout(function(){
    if (direction === 1) {
      $('.card-item:first').before($('.card-item:last'));
    } else if (direction === -1) {
      $('.card-item:last').after($('.card-item:first'));
    }
    company.removeClass('transition')
		company.css('transform','translateX(0px)'); 
  },700)
}
	});
</script><?php /**PATH D:\Task\2021-05-08(Vargar@250$)\modules/Layout/parts/company.blade.php ENDPATH**/ ?>