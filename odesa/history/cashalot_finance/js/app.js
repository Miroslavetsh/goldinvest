$('document').ready(function(){
    // Selectinng Country in Nav Menu
    $('#drop_coutry li a').on('click', function (e) {
        e.preventDefault();
        var link_text = $(this).html();
        $('#country_block').html(link_text);
    });
});

$('document').ready(function(){

    function genCount() {
        var def = 19433;
        var ts = 1379591528;
        var ti = new Date().getTime();
        var tsi = parseInt(ti.toString().substring(0, 10));

        var rand = 5 + Math.floor(Math.random() * 10);

        var ta = def + parseInt((tsi - ts) / 10000);
        jQuery('#credit_count').text(ta);
    }
    genCount();
    setInterval(genCount, 6478);
});

$('document').ready(function(){
    // progress Circle
    $('.dial').each(function() {
        var $this = $(this);
        var myVal = $this.attr("rel");
        // alert(myVal);
        $this.knob({
            "fgColor": "#f9c100",
            "bgColor": "#eaedf4"
        });
        $({
            value: 0
        }).animate({
            value: myVal
        }, {
            duration: 15000,
            easing: 'swing',
            step: function() {
                $this.val(Math.ceil(this.value)).trigger('change');
            },
            complete: function () {
                $('.step_1').animate({
                    opacity: "toggle"
                }, 500, "swing", function () {
                    $('.step_2').animate({
                        opacity: "toggle"
                    }, 500, "swing");
                });
            }
        })
    });
});


$('document').ready(function(){
    $('#place_equal, #place_inequal ').on('change', function(){
        //alert()//
        if( $("#place_equal").is(":checked") ){
            $('#js_addition_place').find('input').attr('disabled', true);
            //console.log('place_equal')
        }else if ( $("#place_inequal").is(":checked") ){
            $('#js_addition_place').find('input').removeAttr('disabled');
            //console.log('place_inequal')
        }
    })
});

$('document').ready(function(){

    var getAmount = function () {
        return $('#money_amount').val().match(/([.\d]+)/)[0].replace('.', '').replace('.', '');
    }

    var getTerm = function () {
        var term = 30,
            $term_amount = $('#term_amount').val().match(/(\d+)(\s?)([А-Яа-яЁё]+)/);
            
        switch ($term_amount[3]){
            case 'неделя':
            case 'недели':
                term = 7 * $term_amount[1];
                break;
            case 'месяц':
            case 'месяца':
            case 'месяцев':
                term = 30 * $term_amount[1];
                break;
            case 'год':
            case 'года':
            case 'лет':
                term = 365 * $term_amount[1];
                break;
            default:
                term = 365;
                break;
        }

        return term;
    }

    $('#paydayru_form').submit(
        function (e) {
            e.preventDefault();
            window.location.href = 'form.php?amount=' + getAmount() + '&term=' + getTerm();
    });
});

//$('document').ready(function(){
//    $('#money_slider').draggable();
//});


$('document').ready(function () {
    var moneySlider = $('#money_slider');
    var moneyAmount = $('#money_amount');
    var termSlider = $('#term_slider');
    var termAmount = $('#term_amount');
    
    var moneyMap =  ['1.000 рублей', '2.000 рублей', '3.000 рублей', '4.000 рублей', '5.000 рублей', ' 6.000 рублей', ' 7.000 рублей', ' 8.000 рублей', ' 9.000 рублей', ' 10.000 рублей', ' 11.000 рублей', ' 12.000 рублей', ' 13.000 рублей', ' 14.000 рублей', ' 15.000 рублей', ' 16.000 рублей', ' 17.000 рублей', ' 18.000 рублей', ' 19.000 рублей', ' 20.000 рублей', ' 21.000 рублей', ' 22.000 рублей', ' 23.000 рублей', ' 24.000 рублей', ' 25.000 рублей', ' 26.000 рублей', ' 27.000 рублей', ' 28.000 рублей', ' 29.000 рублей', ' 30.000 рублей', ' 35.000 рублей', ' 40.000 рублей', ' 45.000 рублей', ' 50.000 рублей', ' 55.000 рублей', ' 60.000 рублей', ' 65.000 рублей', ' 70.000 рублей', ' 75.000 рублей', ' 80.000 рублей', ' 85.000 рублей', ' 90.000 рублей', ' 95.000 рублей', ' 100.000 рублей', ' 110.000 рублей', ' 120.000 рублей', ' 130.000 рублей', ' 140.000 рублей', ' 150.000 рублей', ' 160.000 рублей', ' 170.000 рублей', ' 180.000 рублей', ' 190.000 рублей', ' 200.000 рублей', ' 210.000 рублей', ' 220.000 рублей', ' 230.000 рублей', ' 240.000 рублей', ' 250.000 рублей', ' 260.000 рублей', ' 270.000 рублей', ' 280.000 рублей', ' 290.000 рублей', ' 300.000 рублей', '  325.000 рублей', ' 350.000 рублей', ' 375.000 рублей', ' 400.000 рублей', ' 425.000 рублей', ' 450.000 рублей', ' 475.000 рублей', ' 500.000 рублей', ' 525.000 рублей', ' 550.000 рублей', ' 575.000 рублей', ' 600.000 рублей', ' 625.000 рублей', ' 650.000 рублей', ' 675.000 рублей', ' 700.000 рублей', ' 725.000 рублей', ' 750.000 рублей', ' 775.000 рублей', ' 800.000 рублей', ' 1.000.000 рублей', ' 1.200.000 рублей', ' 1.400.000 рублей', ' 1.600.000 рублей', ' 1.800.000 рублей', ' 2.000.000 рублей', ' 2.200.000 рублей', ' 2.400.000 рублей', ' 2.600.000 рублей', ' 2.800.000 рублей', ' 3.000.000 рублей'];
    var termMap = [ '1 неделя', '2 недели', '3 недели', '4 недели', '1 месяц', '2 месяца', '3 месяца', '4 месяца', '5 месяцев', '6 месяцев', '7 месяцев', '8 месяцев', '9 месяцев', '10 месяцев', '11 месяцев', '1 год', '2 года', '3 года', '4 года', '5 лет', '6 лет', '7 лет', '8 лет', '9 лет', '10 лет'];

    var replaceValue = function(obj, arr, index){
        //console.log( arr[index] );
        obj.val( arr[index] );
    };

    var fillTheBox = function(input, box){
        var boxVal = $(input).val();
        $(box).html(boxVal);
    };

    var nextVal = function(){
        var curVal = moneySlider.slider( "value" );
        if (curVal >= moneyMap.length - 1) {
            return false
        } else {
            moneySlider.slider("value", ++curVal);
            console.log(curVal);
            moneyAmount.val(moneyMap[curVal]);
            fillTheBox('#money_amount', '#money_box');
        }
    };
    var prevVal = function(){
        var curVal = moneySlider.slider( "value" );
        if (curVal <= 0) {
            return false
        } else {
            moneySlider.slider("value", --curVal);
            console.log(curVal);
            moneyAmount.val(moneyMap[curVal]);
            fillTheBox('#money_amount', '#money_box');
        }
    };


    var nextTerm = function(){
        var curVal = termSlider.slider( "value" );
        if (curVal >= termMap.length - 1) {
            return false
        } else {
            termSlider.slider("value", ++curVal);
            console.log(curVal);
            termAmount.val(termMap[curVal]);
            fillTheBox('#term_amount', '#term_box');
        }
    };
    var prevTerm = function(){
        var curVal = termSlider.slider( "value" );
        if (curVal <= 0) {
            return false
        } else {
            termSlider.slider("value", --curVal);
            console.log(curVal);
            termAmount.val(termMap[curVal]);
            fillTheBox('#term_amount', '#term_box');
        }
    };


    var hintSlider = function(val){
        var sliderHead = $('.slider_head');
        var moneyBox = $('#money_box');
        var percentRate = $('#percent_rate');
        var creditHint = $('#credit_hint');
        var creditTitleWrap = $('#credit_title_wrap');
        var creditHintWrap = $('#credit_hint_wrap');

        creditTitleWrap.hide();
        creditHintWrap.show();
        sliderHead.css({padding: '0', 'border-bottom': 'transparent'})

        // sliderHead Colors
        if ( val >=0 && val <=14 ){
            sliderHead.addClass('green');
            sliderHead.removeClass('yellow');
            sliderHead.removeClass('red');
            moneyBox.css({color:'#81bc42'});
        }
        if ( val >=15 && val <= 33 ){
            sliderHead.addClass('yellow');
            sliderHead.removeClass('green');
            sliderHead.removeClass('red');
            moneyBox.css({color:'#ffa72e'});
        }
        if ( val >33 ){
            sliderHead.addClass('red');
            sliderHead.removeClass('yellow');
            sliderHead.removeClass('green');
            moneyBox.css({color:'#ce4947'});
        }


        //sliderHead Texts
        if ( val >=0 && val <=6 /*от 1 до 7000*/){
            percentRate.html('97%');
            creditHint.html(' Автоматическое <br> одобрение');
        }
        if ( val >=7 && val <=14 /*от 8000 до 15000*/ ){
            percentRate.html('94%');
            creditHint.html(' Может понадобиться <br> паспорт');
        }
        if ( val >=15 && val <=29 /*от 16000 до 30000*/ ){
            percentRate.html('84%');
            creditHint.html(' Нужен только <br>паспорт ');

        }
        if ( val >=30 && val <=33 /*от 31000 до 50000*/ ){
            percentRate.html('72%');
            creditHint.html('  Может понадобиться подтверждение места работы  ');
        }
        if ( val >=34 && val <=43 /*от 51000 до 100000*/ ){
            percentRate.html('64%');
            creditHint.html('   Может понадобиться справка о доходах (или под залог)  ');
        }
        if ( val >=44 && val <=63 /*от 101000 до 300000*/ ){
            percentRate.html('51%');
            creditHint.html('   Необходима справка о доходах (или под залог) ');
        }
        if ( val >=64 && val <=84 /*от 301000 до 1000000*/ ){
            percentRate.html('37%');
            creditHint.html('   Нужна справка 2-ндфл  (или под залог) ');
        }
        if ( val >=85 /*от 1001000 до 3000000*/ ){
            percentRate.html('99%');
            creditHint.html('   Требуется обеспечение кредита (залог)');
        }


    };




////////////////////////////////////////////////////////
    moneySlider.slider({
        range: "min",
        value: moneyMap.length - 1,
        min: 0,
        animate: true,
        max: moneyMap.length - 1,
        slide: function( event, ui ) {
            //moneyAmount.val( ui.value );
            replaceValue(moneyAmount, moneyMap, ui.value );
            fillTheBox('#money_amount', '#money_box');
            hintSlider(ui.value);
        }
    });

    moneyAmount.val(moneyMap[moneyMap.length - 1]);
    fillTheBox('#money_amount', '#money_box');

    $('[data-change="money"]').on('click', function(){
        if( $(this).data('action') === 'plus' ){
            nextVal();
        }else{
            prevVal();
        }
    });
////////////////////////////////////////////////////////
    termSlider.slider({
        range: "min",
        value: termMap.length-1,
        min: 0,
        animate: true,
        max: termMap.length - 1,
        slide: function( event, ui ) {
            //moneyAmount.val( ui.value );
            replaceValue( termAmount, termMap, ui.value );
            fillTheBox('#term_amount', '#term_box');
        }
    });

    termAmount.val(termMap[termMap.length-1]);
    fillTheBox('#term_amount', '#term_box');

    $('[data-change="term"]').on('click', function(){
        if( $(this).data('action') === 'plus' ){
            nextTerm();
        }else{
            prevTerm();
        }
    });

////////////////////////////////////////////////////////
    setTimeout(function(){
        var i = moneyMap.length-1;
        var myLoop = function () {
            $('.slider_range').addClass('bounceIn');
            setTimeout(function () {
                //  console.log ( moneyMap[i] );
                i -= 1;
                if ( i >= 4 ) {
                    myLoop();
                    moneyAmount.val( moneyMap[i] );
                    fillTheBox('#money_amount', '#money_box');
                    moneySlider.slider( "option", "value", i );
                }
            }, 20)
        };
        myLoop();

    }, 1000);


    setTimeout(function(){
        var j = termMap.length-1;
        var myHoop = function () {
            setTimeout(function () {
                // console.log ( termMap[j] );
                j -= 1;
                if ( j >= 1 ) {
                    myHoop();
                    termAmount.val( termMap[j] );
                    fillTheBox('#term_amount', '#term_box');
                    termSlider.slider( "option", "value", j );
                }
            }, 30)
        };
        myHoop();
    }, 1800);
});
