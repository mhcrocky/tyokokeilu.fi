jQuery(function ($) {
    $(".bravo_filter .g-filter-item").each(function () {
        if($(window).width() <= 990){
            $(this).find(".item-title").toggleClass("e-close");
        }
        // $(this).find(".item-title").click(function () {
        //     $(this).toggleClass("e-close");
        //     if($(this).hasClass("e-close")){
        //         $(this).closest(".g-filter-item").find(".item-content").slideUp();
        //     }else{
        //         $(this).closest(".g-filter-item").find(".item-content").slideDown();
        //     }
        // });
        $(this).find(".btn-more-item").click(function () {
            $(this).closest(".g-filter-item").find(".hide").removeClass("hide");
            $(this).addClass("hide");
        });
        $(this).find(".bravo-filter-price").each(function () {
            var input_price = $(this).find(".filter-price");
            var min = input_price.data("min");
            var max = input_price.data("max");
            var from = input_price.data("from");
            var to = input_price.data("to");
            var symbol = input_price.data("symbol");
            input_price.ionRangeSlider({
                type: "double",
                grid: true,
                min: min,
                max: max,
                from: from,
                to: to,
                prefix: symbol
            });
        });
    });
    $(".bravo_form_filter input[type=checkbox]").change(function () {
        $(this).closest(".bravo_form_filter").submit();
        
    });
    $(".bravo_form_filter").on('submit',function (e) {
        e.preventDefault();
        var data = {};
       for (let index = 0; index < $(".bravo_form_filter input[type=checkbox]").length; index++) {
           var chkbox = $(".bravo_form_filter input[type=checkbox]").eq(index);
            if(chkbox.prop("checked")===true){
                if(data[chkbox.attr('name')]){
                    data[chkbox.attr('name')].push(chkbox.val());
                }else{
                    data[chkbox.attr('name')] = [chkbox.val()];
                }
            }
       } 
        data['_ajax'] = true;
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $(this).find('meta[name="csrf-token"]').attr('content')
            }
        });
        console.log(data)
        $.ajax({
            'url':'/job',
            'data': data,
            'type': 'GET',
            success: function (data) {
                console.log(data)
                $('.bravo-list-item').parent().html(data.html)
            }
        });
    })
    $('input.search').on('keyup',function () {
        var search_type=  $(this).attr('name');
        var search_value = $('.'+search_type).val().toLowerCase();
        search_filter(search_value,search_type);
    })
    $(document).ready(function () {
        for (let index = 0; index < $('input.search').length; index++) {
            var search_type= $('input.search').eq(index).attr('name')
            var search_value = $('input.search').eq(index).val().toLowerCase();
            search_filter(search_value,search_type);
        }
    })
    function search_filter(value,type) {
        $('ul.'+type+' li').addClass('hide');
        var count = 0;
        for (let index = 0; index < $('ul.'+type).children().length; index++) {
            if(count>=5){
                break;
            }
            var obj = $('ul.'+type).eq(0).children().eq(index);
            var location_name = ( obj.attr('data')).toLowerCase()
            if(location_name.includes(value)){
                obj.removeClass('hide');
                count++;
            }
        }
    }
});