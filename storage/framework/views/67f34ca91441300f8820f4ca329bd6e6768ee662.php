
<div class="category-slider">
  <div id="category_carousel">
    <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <span class="category-list" id=<?php echo e($row['num']); ?>>
        <div style="background-image:url('<?php echo e($row->getImageUrl()); ?>')" class="category-image"></div>
        <a href="/job?category_id%5B%5D=<?php echo e($row->id); ?>"> 
          <p class="category-name"><?php echo e($row->name); ?></p>
        </a>
      </span>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      
  </div>
  <span id="prev"></span>
  <span id="next"></span>
</div>
<?php if (! $__env->hasRenderedOnce('40af379c-46f6-4ac6-bb8f-27649bd9b7e1')): $__env->markAsRenderedOnce('40af379c-46f6-4ac6-bb8f-27649bd9b7e1'); ?>
<script>
	$(document).ready(function(){
		var catagory = $('#category_carousel'),
    threshold = 100,
    slideWidth = 300,
    dragStart, 
    dragEnd;
      $('#category_carousel .category-list:last-child').prependTo("#category_carousel");
      $('#category_carousel').css({marginLeft:-slideWidth})
      console.log( $('#category_carousel .category-list:last-child'))

    $('#next').click(function(){ shiftSlide(-1) })
    $('#prev').click(function(){ shiftSlide(1) })

    catagory.on('mousedown', function(){
      if (catagory.hasClass('transition')) return;
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
      if (catagory.hasClass('transition')) return;
      dragEnd = dragStart;
      $(document).off('mouseup')
      catagory.off('mousemove')
              .addClass('transition')
              .css('transform','translateX(' + (direction * slideWidth) + 'px)'); 
      setTimeout(function(){
        if (direction === 1) {
          $('.category-list:first').before($('.category-list:last'));
        } else if (direction === -1) {
          $('.category-list:last').after($('.category-list:first'));
        }
        catagory.removeClass('transition')
        catagory.css('transform','translateX(0px)'); 
      },700)
    }
	});
</script>
<?php endif; ?>
<?php /**PATH D:\Task\2021-05-08(Vargar@250$)\modules/Job/mobile/frontend/blocks/list-job-category/loop.blade.php ENDPATH**/ ?>