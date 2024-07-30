<?php require_once "config.php" ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="img/favicon.ico">

    <title> </title>

    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic&subset=latin,cyrillic-ext,cyrillic' rel='stylesheet' type='text/css'>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.css">
    <!-- Custom styles for this template -->
    <link href="css/main.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-134143739-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-134143739-1');
</script>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-WP5JBG2');</script>
<!-- End Google Tag Manager -->
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WP5JBG2"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- Wrap all page content here -->
<div class="wrap">

    <!-- Fixed navbar -->
    <div class="navbar navbar-default header">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <div class="btn-group country_btn_group hidden-lg hidden-md hidden-sm visible-xs">
                    <button type="button" class="btn btn-default dropdown-toggle country_btn" data-toggle="dropdown"
                            aria-expanded="false">
                                       <span id="country_block1">
                                           <img src="img/flags/russia.png" alt=""/>
                                       </span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" id="drop_coutry1">
                        <li data-item-value="russia">
                            <a href="#">
                                <img src="img/flags/russia.png" alt=""/>
                                Россия
                            </a>
                        </li>
                        <li data-item-value="ukraine">
                            <a href="#">
                                <img src="img/flags/ukraine.png" alt=""/>
                                Украина
                            </a>
                        </li>
                        <li data-item-value="belarus">
                            <a href="#">
                                <img src="img/flags/belarus.png" alt=""/>
                                Беларусь
                            </a>
                        </li>
                        <li data-item-value="kazakhstan">
                            <a href="#">
                                <img src="img/flags/kazakhstan.png" alt=""/>
                                Казахстан
                            </a>
                        </li>
                        <li data-item-value="moldova">
                            <a href="#">
                                <img src="img/flags/moldova.png" alt=""/>
                                Молдова
                            </a>
                        </li>
                    </ul>
                </div>

                <a class="navbar-brand" href="/">
                    <img src="img/header_logo.png" alt="" class="header_logo_img"/>
                    <span class="brand_head">Кашалот Финанс</span>
                    <span class="brand_subhead">Деньги для всего, что нельзя отложить!</span>
                </a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="header_menu_item_link">
                        <a href="form.php"> Займ онлайн </a>
                    </li>
<!--                    <li class="header_menu_item_link">
                        <a href="" class="">
                            Ипотека
                        </a>
                    </li>-->
                    <li class="header_menu_item_country">
                        Страна:
                        <div class="btn-group country_btn_group">
                            <button type="button" class="btn btn-default dropdown-toggle country_btn"
                                    data-toggle="dropdown" aria-expanded="false">
                                       <span id="country_block">
                                           <img src="img/flags/russia.png" alt=""/>
                                            Россия
                                       </span>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu" id="drop_coutry">
                                <li data-item-value="russia">
                                    <a href="#">
                                        <img src="img/flags/russia.png" alt=""/>
                                        Россия
                                    </a>
                                </li>
                                <li data-item-value="ukraine">
                                    <a href="#">
                                        <img src="img/flags/ukraine.png" alt=""/>
                                        Украина
                                    </a>
                                </li>
                                <li data-item-value="belarus">
                                    <a href="#">
                                        <img src="img/flags/belarus.png" alt=""/>
                                        Беларусь
                                    </a>
                                </li>
                                <li data-item-value="kazakhstan">
                                    <a href="#">
                                        <img src="img/flags/kazakhstan.png" alt=""/>
                                        Казахстан
                                    </a>
                                </li>
                                <li data-item-value="moldova">
                                    <a href="#">
                                        <img src="img/flags/moldova.png" alt=""/>
                                        Молдова
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>

    <section class="hero">
        <div class="hero_int">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h1 class="site_head">Срочно нужны деньги?</h1>

                        <h2 class="site_subhead">Tеперь получить займ очень просто!</h2>

                        <div class="site_subhead_hints"> Отправьте заявку<i class="fa fa-long-arrow-right"></i>Дождитесь
                            звонка<i class="fa fa-long-arrow-right"></i>Получите деньги
                        </div>
                    </div>
                </div>



                <div class="row">
                    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                        <img src="img/label.png" class="label_slider" alt="">
                        <form id="paydayru_form" class="slider_range">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="slider_head">
                                        <div class="row" id="credit_title_wrap">
                                            <div class="col-xs-12">
                                                <div class="slider_head_title">
                                                    Оформите заявку и узнайте <br> решение прямо сейчас!
                                                    <img src="img/24.png" class="small_24" alt="">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="credit_hint_wrap clearfix" id="credit_hint_wrap" style="display: none;">
                                            <div class="hint_block percent_rate" id="percent_rate">64%</div>
                                            <div class="hint_block probability">Вероятность <br>одобрения</div>
                                            <div class="hint_block credit_hint" id="credit_hint">Может понадобиться справка о доходах (или под залог)</div>
                                        </div>



                                    </div>
                                </div>
                            </div>
                            <div class="slider_section">
                                <div class="slider_row">
                                    <div class="row">


                                        <div class="col-xs-12">
                                            <div class="money_slider_wrap">
                                                <div class="slider_notation">
                                                    Мне нужно: <span id="money_box"></span><input type="hidden" class="" id="money_amount">
                                                </div>
                                                <div id="money_slider"></div>
                                                <ul class="meter_list clearfix">
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                </ul>
                                                <div class="extreme_points clearfix">
                                                    <div class="start_point">
                                                        1.000 <i class="fa fa-rouble"></i>
                                                    </div>
                                                    <div class="end_point">
                                                        3.000.000 <i class="fa fa-rouble"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="row">

                                        <div class="col-xs-12">
                                            <div class="money_slider_wrap">
                                                <div class="slider_notation">
                                                    На срок: <span id="term_box"></span><input type="hidden" class="" id="term_amount">
                                                </div>
                                                <div id="term_slider"></div>
                                                <ul class="meter_list clearfix">
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                    <li class="meter_item"></li>
                                                </ul>
                                                <div class="extreme_points clearfix">
                                                    <div class="start_point">
                                                        1 неделя
                                                    </div>
                                                    <div class="end_point term_end_point">
                                                        10 лет
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>


                                </div>



                            </div>
                            <div class="slider_footer">
                                <div class="row">
                                    <div class="col-xs-12 text-center">
                                        <button class="project_button btn_gold hero_btn" type="submit">Получить деньги →</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>






    <section class="terms">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="h1 text-center">Условия кредитования:</div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table terms_table">
                            <tbody><tr>
                                <th>Тип кредита</th>
                                <th>Сумма</th>
                                <th>Срок</th>
                                <th>% ставка</th>
                            </tr>
                            <tr>
                                <td>Займ до зарплаты</td>
                                <td>до 30 000 руб</td>
                                <td>до 30 дней</td>
                                <td>0,61 % - 2.3% в день</td>
                            </tr>
                            <tr>
                                <td>Микрокредит</td>
                                <td>до 100 000 руб.</td>
                                <td>до 1 года</td>
                                <td>от 0,23% в день</td>
                            </tr>
                            <tr>
                                <td>Потребительский кредит</td>
                                <td>от 100 000 - 1 000 000 руб.</td>
                                <td>до 5 лет</td>
                                <td>0,21% в день</td>
                            </tr>
                            <tr>
                                <td>Кредит под залог автомобиля</td>
                                <td>от 50 000 руб.</td>
                                <td>до 3 лет</td>
                                <td>от 4% в месяц</td>
                            </tr>
                            <tr>
                                <td>Кредит под залог недвижимости</td>
                                <td>от 100 000 руб.</td>
                                <td>до 10 лет</td>
                                <td>от 1% в месяц</td>
                            </tr>
                            </tbody></table>
                    </div>
                </div>
            </div>
        </div>
    </section>






    <section class="advantages">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="advantage_block">
                        <img src="img/ad_pas.png" alt="" class="advantage_image"/>

                        <div class="advantage_head">Без залога <br/>и поручительства!</div>
                        <div class="advantage_text">только паспорт,<br/> без сбора документов</div>
                    </div>
                    <!--advantage_block-->
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="advantage_block">
                        <img src="img/adv_percent.png" alt="" class="advantage_image"/>

                        <div class="advantage_head">Ставка - всего <br/>от 0,5% в день!</div>
                        <div class="advantage_text">только самые <br/>выгодные займы</div>
                    </div>
                    <!--advantage_block-->
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="advantage_block">
                        <img src="img/adv_eye.png" alt="" class="advantage_image"/>

                        <div class="advantage_head">Без скрытых платежей <br/>и комиссий!</div>
                        <div class="advantage_text">полная прозрачность <br/> условий кредитов</div>
                    </div>
                    <!--advantage_block-->
                </div>
            </div>
        </div>
    </section>
    <!--advantages-->

    <section class="description">
        <div class="description_int">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                        <div class="description_wrap">
                            <div class="description_header">
                                <div class="description_head">
                                    срочные займы
                                </div>
                                <div class="description_subhead">
                                    на любые цели
                                </div>
                            </div>
                            <div class="description_text">
                                Успешный многолетний опыт, инновационные решения в области микрофинансирования позволяют
                                нам
                                предоставлять вам только самые выгодные займы в кратчайшие сроки!
                            </div>
                            <ul class="description_list">
                                <li class="description_item"><i class="fa fa-check"></i> займы от 1 000 до 100 000
                                    рублей
                                </li>
                                <li class="description_item"><i class="fa fa-check"></i> срок займа — от 7 дней до 12
                                    месяцев
                                </li>
                                <li class="description_item"><i class="fa fa-check"></i> без комиссий и справок о
                                    доходах
                                </li>
                                <li class="description_item"><i class="fa fa-check"></i> улучшаем кредитную историю</li>
                                <li class="description_item"><i class="fa fa-check"></i> процент одобрения - 96%</li>
                            </ul>
                            <div class="descritpion_close">Деньги на вашу карту или наличными
                                <i class="fa fa-long-arrow-right"></i>
                            </div>
                        </div>
                        <img class="img-responsive hidden-lg hidden-md visible-sm visible-xs payments_bottom"
                             src="img/payments.png">
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                        <img src="img/payments.png"
                             class="img-responsive visible-lg visible-md hidden-sm hidden-xs payments_img">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--description-->




    <section class="partners">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="h1 text-center">
                        С нами работают более 100 банков, МФО <br>и бюро кредитных историй:

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table partners_table">
                            <tbody><tr>
                                <td><img src="img/mfo_logos/mfo1.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo2.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo3.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo4.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo5.jpg" class="img-responsive"></td>
                            </tr>
                            <tr>
                                <td><img src="img/mfo_logos/mfo26.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo27.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo8.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo9.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo10.jpg" class="img-responsive"></td>
                            </tr>
                            <tr>
                                <td><img src="img/mfo_logos/mfo28.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo29.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo13.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo30.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo15.jpg" class="img-responsive"></td>
                            </tr>
                            <tr>
                                <td><img src="img/mfo_logos/mfo16.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo17.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo31.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo19.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo20.jpg" class="img-responsive"></td>
                            </tr>
                            <tr>
                                <td><img src="img/mfo_logos/mfo32.png" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo22.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo23.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo24.jpg" class="img-responsive"></td>
                                <td><img src="img/mfo_logos/mfo25.jpg" class="img-responsive"></td>
                            </tr>

                            </tbody></table>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <section class="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="testimonial_wrap">
                        <img src="img/testimonial.png" alt="" class="testimonial_man"/>

                        <div class="testimonials_head">Мы ценим каждого клиента!</div>
                        <div class="testimonials_subhead">Выдано более <span id="credit_count">19.433</span> займов.
                        </div>
                        <ul class="testimonials_list">
                            <li class="testimonials_item">
                                <div class="testimonials_block woman">
                                    <img src="img/testimonial_woman.gif" alt="" class="testimonial_ava"/>

                                    <div class="testimonials_person">Максим, студент, г. Санкт-Петербург</div>
                                    <div class="testimonials_text">
                                        Отличная компания! быстрое одобрение и перевод средств, при погашении досрочном никакого обмана и подводных камней! рекомендую обращаться в эту компанию Реально выручили и выражаю свою благодарность!
                                    </div>
                                </div>
                            </li>
                            <li class="testimonials_item">
                                <div class="testimonials_block man">
                                    <img src="img/testimonial_man.gif" alt="" class="testimonial_ava"/>

                                    <div class="testimonials_person">Игорь, оператор, г. Саратов
                                    </div>
                                    <div class="testimonials_text">
                                        Оооочень срочно нужны были деньги, одобрили без проблем, хотя кредитная история желает быть лучшей, заполнения анкеты пару минут, и займ уже на карте, ни проверок, ни документов.
                                    </div>
                                </div>
                            </li>
                            <li class="testimonials_item">
                                <div class="testimonials_block woman">
                                    <img src="img/testimonial_woman.gif" alt="" class="testimonial_ava"/>

                                    <div class="testimonials_person">Анна, домохозяйка, г. Астрахань
                                    </div>
                                    <div class="testimonials_text">
                                        Спасибо большое "Кашалоту"за большое доверие!!очень выручили и помогли!!вседа буду обращаться к вам!!!
                                    </div>
                                </div>
                            </li>
                            <li class="testimonials_item">
                                <div class="testimonials_block man">
                                    <img src="img/testimonial_man.gif" alt="" class="testimonial_ava"/>

                                    <div class="testimonials_person">Анатолии, экспедитор, Петропавловск-Камчатский</div>
                                    <div class="testimonials_text">
                                        Получаю займ с удовольствием, сервис отличный и продуманный, по моему мнению лучший в Интернете. С уважением, Анатолии.
                                    </div>
                                </div>
                            </li>
                            <li class="testimonials_item">
                                <div class="testimonials_block woman">
                                    <img src="img/testimonial_woman.gif" alt="" class="testimonial_ava"/>

                                    <div class="testimonials_person">Маргарита, секретарь, г. Краснодар</div>
                                    <div class="testimonials_text">
                                        Очень хороший сайт. Займ одобрили и перевели на карту очень быстро. Сервис работает на 5 +!!!! Спасибо вам, выручаете за 5 минут!!!!Успехов Вам!
                                    </div>
                                </div>
                            </li>
                            <li class="testimonials_item">
                                <div class="testimonials_block man">
                                    <img src="img/testimonial_man.gif" alt="" class="testimonial_ava"/>

                                    <div class="testimonials_person">Юрий, автомеханик, г. Москва</div>
                                    <div class="testimonials_text">
                                        Когда другие компании отказывают, эта же наоборот даёт положительный ответ. Так выручили просто слов нет, реальная помощь понадобилась, а в этой компании всё так просто. Спасибо, я очень вам благодарен!!!
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pre_footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="pre_footer_copy">
                        <a href="/" class="pre_footer_logo_link">
                            <img src="img/footer_logo.png" alt=""/>
                        </a>

                        <div class="pre_footer_year">© 2011-2019</div>
                        <div class="pre_footer_site_name">«Кашалот финанс»</div>
                        <div class="pre_footer_rights">Все права защищены.</div>
                    </div>
                    <div class="pre_footer_service">
                        Пользуясь сервисом cashalot.su я подтверждаю, что согласен с правилами пользования сервисом,
                        являюсь гражданином РФ и мне больше 18 лет.
                    </div>
                    <div class="pre_footer_link">
                        <a href="rules.php">Правила пользования системой</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <ul class="pre_footer_links_list">
                        <li class="pre_footer_links_item">
                            <a href="form.php" class="pre_footer_links_link">Получить займ</a>
                        </li>
                        <li class="pre_footer_links_item">
                            <a href="rules.php" class="pre_footer_links_link">Правила</a>
                        </li>
                    </ul>
                    <!--<div class="social_links">
                        <div class="pluso" data-background="transparent"
                             data-options="small,round,line,horizontal,counter,theme=04"
                             data-services="twitter,facebook,odnoklassniki,vkontakte,google"></div>
                    </div>-->
                </div>
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
                    <div class="pre_footer_text">«Кашалот Финанс» - современный и удобный сервис по выдаче микрозаймов через Интернет. Больше не нужно одалживать у соседей и родственников или ходить в небезопасные пункты, обещающие “быстрые деньги”. Взять деньги на карту можно в комфорте собственной квартиры в любом месте нашей страны. Нужно просто заполнить онлайн заявку на микрокредит. «Кашалот Финанс» позволяет получить деньги в долг в течение 5 минут на самых выгодных условиях. Мы предлагаем самые низкие ставки по кредитам для заемщиков по всей России, а также понятные условия кредитования и качественный сервис для наших заемщиков.
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<!--wrap-->


<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>


<script src="js/app.js"></script>


</body>
</html>