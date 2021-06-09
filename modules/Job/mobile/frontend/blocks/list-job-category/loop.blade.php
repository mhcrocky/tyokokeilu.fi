
<div class="category-slider">
  <div id="category_carousel">
    @foreach ($rows as $row)
      <span class="category-list" id={{$row['num']}}>
        <div style="background-image:url('{{$row->getImageUrl()}}')" class="category-image"></div>
        <a href="/job?category_id%5B%5D={{$row->id}}"> 
          <p class="category-name">{{ $row->name }}</p>
        </a>
      </span>
    @endforeach
  </div>
  <span id="prev"></span>
  <span id="next"></span>
</div>
@once
<script>
	$(document).ready(function(){
		var catagory = $('#category_carousel'),
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
@endonce