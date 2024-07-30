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
</head>
<body>

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
                        <a href="form.php">Займ онлайн</a>
                    </li>
                    <!--<li class="header_menu_item_link">
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

    <section class="other_pages">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="slider_range">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="slider_head">
                                    <h1 class="site_head">Правила пользования <br/>системой "Кашалот Финанс"</h1>
                                    <h2 class="text-center"><span>Заполняя заявку на кредит Вы соглашаетесь <br/>с нашими правилами использования данных</span></h2>
                                </div>
                            </div>
                        </div>
                        <div class="slider_section">
                            <div class="well steps_wrap">
                                <ol>
                                    <li>Я даю свое согласие на регистрацию в проекте cashalot.su и получение новостей проекта. Я уведомлен о том, что информация, переданная мною по сети Интернет, может стать доступной третьим лицам, и я освобождаю Кашалот Финанс от ответственности, в случае, если указанные мною сведения станут доступными третьим лицам. Я подтверждаю, что согласен на то, что мне могут быть предложены платные услуги за проверку моей кредитной истории, в том числе и за подбор кредита, которыми я могу воспользоваться по собственному желанию. Я уведомлен о том, что со мной могут связаться по телефону для достижения целей, которые я преследую, оставив заявку на кредит.
                                        <hr/></li>
                                    <li>В целях принятия одним из МФО-партнеров Кашалот Финанс решения о заключении договора займа я даю им свое согласие на:
                                        <br/> <br/> <div>
                                            — обработку в полном объеме моих персональных данных, изложенных в заявке на займ, а именно на сбор и проверку достоверности представленной информации путем обращения к третьим лицам. Я даю свое согласие на обработку моих персональных данных в целях продвижения услуг Кашалот Финанс на рынке с помощью средств связи, равно как продвижение услуг Кашалот Финанс и/или услуг (товаров, работ) третьих лиц-партнеров Кашалот Финанс.
                                            <br/><br/>
                                            — получение информации о моей кредитной истории на основании Федерального закона от 30.12.2004 г. № 218-ФЗ "О кредитных историях" от любых организаций, осуществляющих в соответствии с действующим законодательством формирование, обработку и хранение такой информации. Полученная информация предназначена для внутреннего использования МФО-партнеров Кашалот Финанс. Настоящие согласия даны мной на неопределенный срок.
                                        </div>
                                        <hr/></li>
                                    <li>
                                        Я подтверждаю, что сведения, содержащиеся в заявке, являются верными и точными на указанную дату и обязуюсь незамедлительно уведомить Кашалот Финанс в случае изменения указанных мной сведений, а также о любых обстоятельствах, способных повлиять на выполнение мной или МФО-партнеров Кашалот Финанс обязательств по займу, который может быть предоставлен на основании заявки.
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--hero-->
</div>
<!--wrap-->


<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>


<script src="js/app.js"></script>


</body>
</html>