Number.prototype.pad = function(size) {
  var s = String(this);
  while (s.length < (size || 2)) {s = "0" + s;}
  return s;
}

var current_man = 1;

var current_date = new Date();

var current_month = current_date.getUTCMonth() + 1; //months from 1-12
var current_day = current_date.getUTCDate();
var current_year = current_date.getUTCFullYear();

var popform_show = false;

$(document).ready(function(){

    $(".popform-calend-date").each(function(){
        $(this).html(current_day.pad(2)+"."+current_month.pad(2)+"."+current_year);
        $("input[name='date']").val(current_day.pad(2)+"."+current_month.pad(2)+"."+current_year);
    })
    $(".popform-prev").click(function(e){
        current_man--;
        if(current_man<1)current_man=3;
        $(".popform-inner-left-content").removeClass("on");
        $(".popform-inner-left-content").eq(current_man-1).addClass("on");
        $(".popform-inner-left-content.on").find(".popform-man-name").css("color","#fff");
        var manname = $(".popform-inner-left-content.on").find(".popform-man-name").text();
        $("input[name='kkomu']").val(manname);
        setTimeout(function(){
            $(".popform-inner-left-content.on").find(".popform-man-name").css("color","#ffbc6b");
        },300);

    });
    $(".popform-next").click(function(e){
        current_man++;
        if(current_man>3)current_man=1;
        $(".popform-inner-left-content").removeClass("on");
        $(".popform-inner-left-content").eq(current_man-1).addClass("on");
        $(".popform-inner-left-content.on").find(".popform-man-name").css("color","#fff");
        var manname = $(".popform-inner-left-content.on").find(".popform-man-name").text();
        $("input[name='kkomu']").val(manname);
        setTimeout(function(){
            $(".popform-inner-left-content.on").find(".popform-man-name").css("color","#ffbc6b");
        },300);
    })

    $(".popform-calend-prev-button").click(function(e){
        var date = $(this).parent().next().text();
        var date_splitted = date.split(".");
        var d = parseInt(date_splitted[0]);
        var m = parseInt(date_splitted[1]);
        var y = parseInt(date_splitted[2]);
        d--;
        if(d<1){
            d=30;
            m--;
        }
        if(m<1){
            m=12;
            y--;
        }
        
        if((m==current_month) && (y ==current_year) && (d<=current_day)){
            $(this).hide();
        }
        var newdate = d.pad(2)+"."+m.pad(2)+"."+y;
        $("input[name='date']").val(newdate);
        $(this).parent().next().html(newdate);

        if((m==current_month) && (y ==current_year) && (d == current_day)){
            $(this).parents(".popform-calend").find("td").eq(0).addClass("zan");
            $(this).parents(".popform-calend").find("td").eq(1).addClass("zan");
            $(this).parents(".popform-calend").find("td").eq(8).addClass("zan");
        } else {
            $(this).parents(".popform-calend").find("td").removeClass("zan");
        }
    })

    $(".popform-calend-next-button").click(function(e){
        var date = $(this).parent().prev().text();
        var date_splitted = date.split(".");
        var d = parseInt(date_splitted[0]);
        var m = parseInt(date_splitted[1]);
        var y = parseInt(date_splitted[2]);
        d++;
        if(d>30){
            d=1;
            m++;
        }
        if(m>12){
            m=1;
            y++;
        }
        var newdate = d.pad(2)+"."+m.pad(2)+"."+y;
        $("input[name='date']").val(newdate);
        $(this).parent().prev().html(newdate);
        $(this).parents("table").find(".popform-calend-prev-button").show();

        if((m==current_month) && (y ==current_year) && (d == current_day)){
            $(this).parents(".popform-calend").find("td").eq(0).addClass("zan");
            $(this).parents(".popform-calend").find("td").eq(1).addClass("zan");
            $(this).parents(".popform-calend").find("td").eq(8).addClass("zan");
        } else {
            $(this).parents(".popform-calend").find("td").removeClass("zan");
        }
    })

    $(".popform-calend-table td").click(function(e){
        $(this).parents("table").find("td").removeClass("on");
        $(this).addClass("on");
        $("input[name='time']").val($(this).text());
        $(this).css("outline-width",10);
    })

    $(".popform-close").click(function(e){
        $(".popform-section").fadeOut();
    })

})

function scrollToDiv(div) {
    $('html, body').animate({
        scrollTop: $(div).offset().top - $("#site-header").outerHeight()
    }, 500);
}
$(document).click(function(event) {})
equalheight = function(container) {
    var currentTallest = 0,
        currentRowStart = 0,
        rowDivs = new Array(),
        $el, topPosition = 0;
    $(container).each(function() {
        $el = $(this);
        $($el).height('auto')
        topPostion = $el.position().top;
        if (currentRowStart != topPostion) {
            for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
            rowDivs.length = 0;
            currentRowStart = topPostion;
            currentTallest = $el.height();
            rowDivs.push($el);
        } else {
            rowDivs.push($el);
            currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
        }
        for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
            rowDivs[currentDiv].height(currentTallest);
        }
    });
}

function declOfNum(number, titles) {
    cases = [2, 0, 1, 1, 1, 2];
    return number + " " + titles[(number % 100 > 4 && number % 100 < 20) ? 2 : cases[(number % 10 < 5) ? number % 10 : 5]];
}
var priceSet;
priceSet = function(data) {
    var price = Number.prototype.toFixed.call(parseFloat(data) || 0, 0),
        price_sep = price.replace(/(\D)/g, ","),
        price_sep = price_sep.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1 ");
    return price_sep;
};
var sum = 10000;
var duration = 1;
var total;

function calcTotal() {
//    total = Math.round(sum * ((15 / 100 / 12) / (1 - Math.pow((1 + 15 / 100 / 12), -(12 * duration)))));
    total = Math.round(sum / 100 * 2 );
    $("#calc-summary b").html(priceSet(total));
}
$(document).ready(function() {

    $(".phonelink").click(function(){
        window.location.href='tel://';
    })

    var land_type = $(".hidden-landing").text();
    $("input[name='landing']").val(land_type);

    $('.validate-form').validate({
        onSubmit: true,
        sendForm: false,
        eachValidField: function() {
            $(this).removeClass('error').addClass('success');
        },
        eachInvalidField: function() {
            $(this).removeClass('success').addClass('error');
        },
        valid: function() {
        	var form = $(this).find("input[name='form']").val();
        	if(form=='call'){
        		
        	}
        	if(form=='order'){
        		
        	}
        	if(form=='preorder'){
        		
        	}
            $.post('/send.php',$(this).serialize(),
            function(data){
              console.log(data);
            });
            $(this).ajaxSubmit({});
            $.fancybox({
                href: "send.php",
                padding: 0
            })
            return false;
        },
        invalid: function() {}
    });
    $('#slide-srok').rangeslider({
        polyfill: false,
        rangeClass: 'rangeslider',
        disabledClass: 'rangeslider--disabled',
        horizontalClass: 'rangeslider--horizontal',
        verticalClass: 'rangeslider--vertical',
        fillClass: 'rangeslider__fill',
        handleClass: 'rangeslider__handle',
        onInit: function() {},
        onSlide: function(position, value) {
            $("#srok-current").html(declOfNum(value, ['год', 'года', 'лет']));
            $("input[name='lead_srok']").val(declOfNum(value, ['год', 'года', 'лет']));
            duration = value;
            calcTotal();
        },
        onSlideEnd: function(position, value) {}
    });
    $('#slide-sum').rangeslider({
        polyfill: false,
        rangeClass: 'rangeslider',
        disabledClass: 'rangeslider--disabled',
        horizontalClass: 'rangeslider--horizontal',
        verticalClass: 'rangeslider--vertical',
        fillClass: 'rangeslider__fill',
        handleClass: 'rangeslider__handle',
        onInit: function() {},
        onSlide: function(position, value) {
            $("#sum-current span").html(priceSet(value) + ' $ ');
            $("input[name='lead_sum']").val(priceSet(value) + ' $ ');
            sum = value;
            calcTotal();
        },
        onSlideEnd: function(position, value) {}
    });
    $("#sum-current a").click(function(e) {
        e.preventDefault();
        var csum = prompt("Введите сумму ($.)", "");
        if (csum != null) {
            csum = csum.replace(' ', '');
            csum = csum.replace(',', '');
            csum = csum.replace('.', '');
            sum = csum;
            $("#sum-current span").html(priceSet(csum) + ' $ ');
            calcTotal();
        }
    })
    calcTotal();
    $(".get-call").click(function(e) {
    	if($(this).text().toLowerCase()=='заказать звонок'){
    		$("#popup-get-call").find("input[name='form']").val('call');
            $("input[name='lead_sum']").val('');
            $("input[name='lead_srok']").val('');
    	} else {
    		$("#popup-get-call").find("input[name='form']").val('order');
            $("input[name='lead_srok']").val(declOfNum(duration, ['год', 'года', 'лет']));
            $("input[name='lead_sum']").val(priceSet(sum) + ' $.');
    	}
        $.fancybox({
            href: "#popup-get-call",
            padding: 0
        })
        e.preventDefault();
    })
    $(".checks a").click(function(e) {
        e.preventDefault();
        $(this).toggleClass("active");
        var form = $(this).parents("form");
        var checks = $(this).parent();
        var result = '';
        console.log(result);
        $(checks).find("a").each(function(e) {
            if ($(this).hasClass("active")) {
                result += $(this).children("span").text() + " ; ";
            }
        });
        console.log(result);
        $(form).find("input[name='additional']").val(result);
    })
    $(".calc-tabs a").click(function(e) {
        e.preventDefault();
        $(this).addClass("active").siblings().removeClass("active");
        var index = $(this).index() + 1;
        $("input[name='rooms']").val(index);
    })
    $(".calc-tabs-select").change(function(e){
        var val = $(this).val();
        $("input[name='rooms']").val(index);
    })
    $(".main-menu a").click(function(e) {
        e.preventDefault();
        scrollToDiv($(this).attr("href"));
    })
});

$(window).scroll(function() {
    var y = $(window).scrollTop();
    if(y>$("#calc2").position().top){
        if(popform_show==false) {
            // $(".popform-section").css("visibility","visible").css("opacity",1);
            popform_show = true;
        }
    }    
})

$(window).load(function() {
    equalheight(".feature");
    $("#clients-slider").carouFredSel({
        direction: "left",
        prev: $(".clients-slider-wrapper .prev"),
        next: $(".clients-slider-wrapper .next"),
        scroll: {
            items: 1,
            duration: 500,
            pauseOnHover: true
        },
        auto: {
            play: false,
            timeoutDuration: 4000
        },
        width: '100%',
        items: {
            visible: 'variable',
            minimum: 1,
        },
        responsive: false
    });
    $("#reviews-slider").carouFredSel({
        direction: "left",
        prev: $(".reviews-slider-wrapper .prev"),
        next: $(".reviews-slider-wrapper .next"),
        pagination: $(".reviews-slider-wrapper .dots"),
        scroll: {
            items: 1,
            duration: 500,
            pauseOnHover: true
        },
        auto: {
            play: false,
            timeoutDuration: 4000
        },
        width: '100%',
        items: {
            visible: 1,
            minimum: 1,
        },
        responsive: true
    });
})
$(window).resize(function() {
    equalheight(".feature");
})


$(document).ready(function(){
    $("input[name='phone']").each(function(){
        var el = $(this)[0];
        $(this).attr("pattern","[0-9]+");
        el.oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("Только цифры");
            }
        };
        el.oninput = function(e) {
            e.target.setCustomValidity("");
        };
    })
})