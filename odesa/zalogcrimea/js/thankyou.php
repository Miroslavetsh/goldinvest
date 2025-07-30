<?php 
// Скрипт - разработка FineStyle.pro (telegram:@finestyle)
$phone = stripslashes(htmlspecialchars($_POST['phone']));


if(empty($phone)){
//log('0');
}
else{
$subject = 'Заявка с сайта Demeevinvest.ru '; // заголовок письмя
$addressat = "boguslav.invest@gmail.com"; // Ваш Электронный адрес

$message = "Контактный телефон: {$phone}\n ";
$verify = mail($addressat,$subject,$message,"Content-type:text/plain;charset=utf-8\r\n");
    

/* https://api.telegram.org/botXXXXXXXXXXXXXXXXXXXXXXX/getUpdates */
$phone = $_POST['phone'];
//$email = $_POST['email'];
$token = "1703253998:AAHDSzeaNDw-K8VpKRLqdsXNBsXIqcN--9c";
$chat_id = "-545580662";
$arr = array(
  'Контактный телефон: ' => $phone,
);

foreach($arr as $key => $value) {
  $txt .= "<b>".$key."</b> ".$value."%0A";
};

$vSendToTelegramm = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$txt}","r");
    
if ($verify == 'true'){
// log('1');
}
else 
    {
    //log('0');
    echo '<h1 style="color:red; text-align: center; ">Произошла ошибка!</h1>';
    }
}
?>
<meta charset="utf-8">
<!doctype html>
<html lang=ru>
<head>
<meta charset=UTF-8>
<meta name=viewport content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv=X-UA-Compatible content="ie=edge">
<title> Кредит под залог недвижимости в Москве и крупных городах России</title>
<meta name=keywords content="">
<meta name=description content="">
<link rel=stylesheet href="css/A.style.css.pagespeed.cf.xyo7z1f4Jd.css">
<link rel=icon type="image/png" href="favicon.png.pagespeed.ce.xVEBQTV719.png" />

</head>
<body>

<main>
<div class=thank-wrapper>
<img src="img/logo.png" alt=" Кредит под залог недвижимости" width="90" height="67" class=thank-image data-pagespeed-url-hash=196622278 onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
<div class=thank-title>
Благодарим за заявку! Менеджер свяжется с Вами и проконсультирует по лучшим условиям кредитования в ближайшее время. Ожидайте звонка:)
</div>
<a href="index.html" class=rl-button__thn>
Вернуться
</a>
<!--
<ul class=thank-social>
<li class=thank-social>
<a href="https://www.facebook.com/" target=_blank>
<img src="img/social-fb.svg" alt=" Кредит под залог недвижимости в Москве и крупных городах России" data-pagespeed-url-hash=2929941864 onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
</a>
</li>
<li class=thank-social>
<a href="https://www.instagram.com/" target=_blank>
<img src="img/social-instagram.png.pagespeed.ce.gT-niPdkzW.png" alt=" Кредит под залог недвижимости в Москве и крупных городах России" data-pagespeed-url-hash=762305783 onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
</a>
</li>
<li class=thank-social>
<a href="https://twitter.com/" target=_blank>
<img src="img/social-twitter.svg" alt=" Кредит под залог недвижимости в Москве и крупных городах России" data-pagespeed-url-hash=653415267 onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
</a>
</li>
</ul>
-->
</div>
</main>
</body>
</html>
