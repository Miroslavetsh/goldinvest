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
<body class="form_page">

<!-- Wrap all page content here -->
<div class="wrap">

    <div class="navbar navbar-default header">
        <div class="container">
            <div class="navbar-header">
                <span class="navbar-brand" href="#">
                    <img src="img/header_logo.png" alt="" class="header_logo_img"/>
                    <span class="brand_head">Кашалот Финанс</span>
                    <span class="brand_subhead">Деньги для всего, что нельзя отложить!</span>
                </span>
            </div>

        </div>
    </div>

    <section class="internal_content form_page_content">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <iframe frameborder="0" id="frame" src="http://api.leadiacloud.com/?p=paydayru&w=<?php echo $config['wmid']?>&s=draft&sub=<?php echo isset($_GET['sub']) ? strip_tags($_GET['sub']) : $config['sub']?>&amount=<?php echo isset($_GET['amount']) ? intval($_GET['amount'])  : '10000' ?>&term=<?php echo isset($_GET['term']) ? intval($_GET['term']) : 30?>"></iframe>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                    <div class="tips_wrap">
                        <img src="img/form_girl.png" alt="" class="form_girl"/>
                        <ul class="tips_list">
                            <li class="tips_item">
                                <img src="img/form_shield.png" alt="" class="tips_icon"/>

                                <div class="tips_head">
                                    Гарантия безопасности
                                </div>
                                <div class="tips_subhead">
                                    Мы обеспечиваем 100% защиту ваших персональных данных.
                                </div>
                            </li>
                            <li class="tips_item">
                                <img src="img/form_sun.png" alt="" class="tips_icon"/>
                                <div class="tips_head">
                                    Принимаем заявки с плохой кредитной историей
                                </div>
                                <div class="tips_subhead">
                                    С нами шанс получить кредит намного выше.
                                </div>
                            </li>
                            <li class="tips_item">
                                <img src="img/form_person.png" alt="" class="tips_icon"/>

                                <div class="tips_head">
                                    Оформление онлайн
                                </div>
                                <div class="tips_subhead">
                                    Заявка заполняется и рассматривается онлайн.
                                </div>
                            </li>
                            <li class="tips_item">
                                <img src="img/form_wallet.png" alt="" class="tips_icon"/>
                                <div class="tips_head">
                                    Деньги уже ждут вас
                                </div>
                                <div class="tips_subhead">
                                    Мы всегда находим для вас максимально выгодные займы.
                                </div>
                            </li>
                        </ul>
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

<!--<script src="/js/app.js"></script>-->

</body>
</html>