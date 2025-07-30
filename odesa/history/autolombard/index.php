<?php
   function ValidateEmail($email)
   {
      $pattern = '/^([0-9a-z]([-.\w]*[0-9a-z])*@(([0-9a-z])+([-\w]*[0-9a-z])*\.)+[a-z]{2,6})$/i';
      return preg_match($pattern, $email);
   }
   if ($_SERVER['REQUEST_METHOD'] == 'POST')
   {
	  $mailto = 'boguslav.invest@gmail.com';
      $mailfrom = isset($_POST['email']) ? $_POST['email'] : $mailto;
      $subject = 'Главная заявка на автокредит :';
      $message = 'Данные на зёмщика :';
      $success_url = './form-ok.php';
      $error_url = '';
      $error = '';
      $eol = "\n";
      $max_filesize = isset($_POST['filesize']) ? $_POST['filesize'] * 1024 : 1024000;
      $boundary = md5(uniqid(time()));
      $header  = 'From: '.$mailfrom.$eol;
      $header .= 'Reply-To: '.$mailfrom.$eol;
      $header .= 'MIME-Version: 1.0'.$eol;
      $header .= 'Content-Type: multipart/mixed; boundary="'.$boundary.'"'.$eol;
      $header .= 'X-Mailer: PHP v'.phpversion().$eol;
      if (!ValidateEmail($mailfrom))
      {
         $error .= "The specified email address is invalid!\n<br>";
      }
      if (!empty($error))
      {
         $errorcode = file_get_contents($error_url);
         $replace = "##error##";
         $errorcode = str_replace($replace, $error, $errorcode);
         echo $errorcode;
         exit;
      }
      $internalfields = array ("submit", "reset", "send", "captcha_code");
      $message .= $eol;
      $message .= "IP Address : ";
      $message .= $_SERVER['REMOTE_ADDR'];
      $message .= $eol;
      foreach ($_POST as $key => $value)
      {
         if (!in_array(strtolower($key), $internalfields))
         {
            if (!is_array($value))
            {
               $message .= ucwords(str_replace("_", " ", $key)) . " : " . $value . $eol;
            }
            else
            {
               $message .= ucwords(str_replace("_", " ", $key)) . " : " . implode(",", $value) . $eol;
            }
         }
      }
      $body  = 'This is a multi-part message in MIME format.'.$eol.$eol;
      $body .= '--'.$boundary.$eol;
      $body .= 'Content-Type: text/plain; charset=ISO-8859-1'.$eol;
      $body .= 'Content-Transfer-Encoding: 8bit'.$eol;
      $body .= $eol.stripslashes($message).$eol;
      if (!empty($_FILES))
      {
          foreach ($_FILES as $key => $value)
          {
             if ($_FILES[$key]['error'] == 0 && $_FILES[$key]['size'] <= $max_filesize)
             {
                $body .= '--'.$boundary.$eol;
                $body .= 'Content-Type: '.$_FILES[$key]['type'].'; name='.$_FILES[$key]['name'].$eol;
                $body .= 'Content-Transfer-Encoding: base64'.$eol;
                $body .= 'Content-Disposition: attachment; filename='.$_FILES[$key]['name'].$eol;
                $body .= $eol.chunk_split(base64_encode(file_get_contents($_FILES[$key]['tmp_name']))).$eol;
             }
         }
      }
      $body .= '--'.$boundary.'--'.$eol;
      if ($mailto != '')
      {
         mail($mailto, $subject, $body, $header);
      }
	  	
 #===> Начало блока отправки СМС
		if(!isset($_POST['Телефон']) || empty($_POST['Телефон'])) { header('Location: '.$success_url); exit; }
		if(!isset($_POST['Имя']) || empty($_POST['Имя'])) { header('Location: '.$success_url); exit; }
			  
		$client_phone = $_POST['Телефон']; # из формы берем телефон клиента для СМС
		$client_name = $_POST['Имя']; # из формы берем Имя клиента для СМС

		$client_zayavka_date = "";
		#$client_zayavka_date = date(" Y-m-d H:i:s"); # Добавим в СМС дату и время заполнения формы. Если не нужно - закоментируйте эту строку, поставив в начале знак #

		# Редактируйте текст СМС по своему усмотрению.
		$text = htmlspecialchars('Автокредит.  '.$client_name.' тел: '.$client_phone.''.$client_zayavka_date);
		$description = htmlspecialchars('Новая заявка');
		$start_time = 'AUTO'; // отправить немедленно или ставим дату и время  в формате YYYY-MM-DD HH:MM:SS
		$end_time = 'AUTO'; // автоматически рассчитать системой или ставим дату и время  в формате YYYY-MM-DD HH:MM:SS
		$rate = 1; // скорость отправки сообщений (1 = 1 смс минута). Одиночные СМС сообщения отправляются всегда с максимальной скоростью.
		$lifetime = 4; // срок жизни сообщения 4 часа
		$source = 'SMS'; // Alfaname, Альфанумерическое имя, имя отпарвителя - от какого имени приходят СМС
		$recipient = '380993293314'; // Тут прописан Ваш номер телефона, как получателя.
		$user = '380993293314'; // тут ваш логин в международном формате без знака +. Пример: 380501234567
		$password = '358849'; // Ваш пароль

		$myXML 	 = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
		$myXML 	.= "<request>";
		$myXML 	.= "<operation>SENDSMS</operation>";
		$myXML 	.= '		<message start_time="'.$start_time.'" end_time="'.$end_time.'" lifetime="'.$lifetime.'" rate="'.$rate.'" desc="'.$description.'" source="'.$source.'">'."\n";
		$myXML 	.= "		<body>".$text."</body>";
		$myXML 	.= "		<recipient>".$recipient."</recipient>";
		$myXML 	.=  "</message>";
		$myXML 	.= "</request>";

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_USERPWD , $user.':'.$password);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_URL, 'http://sms-fly.com/api/api.php');
		curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-Type: text/xml", "Accept: text/xml"));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $myXML);
		$response = curl_exec($ch);
		curl_close($ch);
		#<=== Конец блока отправки СМС


      header('Location: '.$success_url);
      exit;
   }
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Демеевский Кредитный Центр</title>
<meta name="generator" content="WYSIWYG Web Builder 9 - http://www.wysiwygwebbuilder.com">
<link href="logo.png" rel="shortcut icon">
<link href="wb.validation.css" rel="stylesheet" type="text/css">
<link href="DemeevkaCredit.css" rel="stylesheet" type="text/css">
<link href="index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="wb.validation.min.js"></script>
<script type="text/javascript" src="fancybox/jquery.easing-1.3.pack.js"></script>
<link rel="stylesheet" href="fancybox/jquery.fancybox-1.3.0.css" type="text/css">
<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.0.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
<script type="text/javascript" src="wwb9.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
   $('#indexInlineFrame2').click(function()
   {
      $.fancybox(
      {
         'padding' : 0,
         'autoScale' : false,
         'transitionIn' : 'none',
         'transitionOut' : 'none',
         'title' : this.title,
         'width' : 605,
         'height' : 420,
         'href' : this.href,
         'type' : 'iframe'
      });
      return false;
   });
   $("#indexForm1").submit(function(event)
   {
      var isValid = $.validate.form(this);
      return isValid;
   });
   $("#indexEditbox3").validate(
   {
      required: true,
      type: 'text',
      length_min: '1',
      color_text: '#000000',
      color_hint: '#00FF00',
      color_error: '#FF0000',
      color_border: '#808080',
      nohint: true,
      font_family: 'Arial',
      font_size: '13px',
      position: 'centerright',
      offsetx: 0,
      offsety: 0,
      bubble_class: 'bubbleleft',
      effect: 'fade',
      error_text: 'заполните поле'
   });
   $("#indexEditbox4").validate(
   {
      required: true,
      type: 'text',
      length_min: '1',
      color_text: '#000000',
      color_hint: '#00FF00',
      color_error: '#FF0000',
      color_border: '#808080',
      nohint: true,
      font_family: 'Arial',
      font_size: '13px',
      position: 'centerright',
      offsetx: 0,
      offsety: 0,
      bubble_class: 'bubbleleft',
      effect: 'fade',
      error_text: 'заполните поле'
   });
   $("#indexEditbox5").validate(
   {
      required: true,
      type: 'text',
      length_min: '1',
      color_text: '#000000',
      color_hint: '#00FF00',
      color_error: '#FF0000',
      color_border: '#808080',
      nohint: true,
      font_family: 'Arial',
      font_size: '13px',
      position: 'centerright',
      offsetx: 0,
      offsety: 0,
      bubble_class: 'bubbleleft',
      effect: 'fade',
      error_text: 'заполните поле'
   });
   $('#indexInlineFrame1').click(function()
   {
      $.fancybox(
      {
         'padding' : 0,
         'autoScale' : false,
         'transitionIn' : 'none',
         'transitionOut' : 'none',
         'title' : this.title,
         'width' : 640,
         'height' : 385,
         'href' : this.href,
         'type' : 'iframe'
      });
      return false;
   });
});
</script>
<style type="text/css">
<!--
.style1 {
	font-family: tahoma;
	font-size: 35px;
	color: #000000;
}
.style2 {
	font-family: 'palatino linotype';
	font-size: 21px;
	color: #ffffff;
}
-->
</style></head>
<body>
   <div id="indexLayer1" style="position:absolute;text-align:center;left:1px;top:0px;width:100%;height:3555px;z-index:115;" title="">
      <div id="indexLayer1_Container" style="width:1000px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
         <div id="wb_indexShape3" style="position:absolute;left:67px;top:1626px;width:897px;height:486px;z-index:12;">
            <img src="images/img0011.png" id="indexShape3" alt="" style="border-width:0;width:897px;height:567px;"></div>
         <div id="wb_indexBulletedList1" style="position:absolute;left:79px;top:1649px;width:874px;height:500px;text-align:center;z-index:13;">
            <div>
               <div class="bullet" style="height:46px;">1.</div>
               <div class="item" style="height:46px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Автомобиль остается у владельца. Не переоформляется и не снимается с учета;<br>
              </strong></span></div>
            </div>
            <div style="clear:both">
              <div class="bullet" style="height:44px;">2.</div>
               <div class="item" style="height:44px;text-align:left;">
                 <div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>К выдаче на руки до 80% от стоимости автомобиля ;</strong></span></div>
               </div>
           </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">3.</div>
               <div class="item" style="height:44px;text-align:left;">
                 <div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Срок кредитования - от одного месяца;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">4.</div>
               <div class="item" style="height:44px;text-align:left;">
                 <div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Возраст заёмщика  от 18 лет;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">5.</div>
               <div class="item" style="height:44px;text-align:left;">
                 <div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Сами подготовим весь необходимый пакет документов (договор, нотариус и т.д.);</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">6.</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Возможно рефинансирование;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">7.</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Нам не важна Ваша прошлая банковская кредитная история;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">8.</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Тело кредита Вы можете оплатить в конце срока кредитного договора;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:38px;">9.</div>
               <div class="item" style="height:38px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Нет никаких штрафов и комиссий за досрочное погашение кредита;</strong></span></div>
            </div>
			<div style="clear:both">
               <div class="bullet" style="height:38px;">10.</div>
               <div class="item" style="height:38px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Сумма выдачи от 500$ США;</strong></span></div>
            </div>
			<div style="clear:both">
               <div class="bullet" style="height:38px;">11.</div>
               <div class="item" style="height:38px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Минимум требуемых документов;</strong></span></div>
            </div>
			<div style="clear:both">
               <div class="bullet" style="height:38px;">12.</div>
               <div class="item" style="height:38px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Работаем практически по всей Украине;</strong></span></div>
            </div>
			<div style="clear:both">
               <div class="bullet" style="height:38px;">13.</div>
               <div class="item" style="height:38px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Кредитуется только собственник автомобиля по техпаспорту;</strong></span></div>
            </div>
        </div>
         <div id="wb_indexShape2" style="position:absolute;left:67px;top:965px;width:897px;height:372px;z-index:14;">
            <img src="images/img0020.png" id="indexShape2" alt="" style="border-width:0;width:897px;height:372px;"></div>
         <div id="wb_indexShape5" style="position:absolute;left:67px;top:671px;width:897px;height:198px;z-index:15;">
            <img src="images/img0013.png" id="indexShape5" alt="" style="border-width:0;width:897px;height:198px;"></div>
         <div id="wb_indexShape8" style="position:absolute;left:671px;top:2988px;width:284px;height:244px;z-index:16;">
            <img src="images/img0004.png" id="indexShape8" alt="" style="border-width:0;width:284px;height:244px;"></div>
         <div id="wb_indexShape1" style="position:absolute;left:375px;top:2988px;width:284px;height:244px;z-index:17;">
            <img src="images/img0008.png" id="indexShape1" alt="" style="border-width:0;width:284px;height:244px;"></div>
         <div id="wb_indexShape6" style="position:absolute;left:68px;top:2241px;width:896px;height:669px;z-index:18;">
            <img src="images/img0009.png" id="indexShape6" alt="" style="border-width:0;width:896px;height:669px;"></div>
         <div id="wb_indexImage8" style="position:absolute;left:248px;top:732px;width:157px;height:7px;z-index:19;">
            <img src="images/arrow.jpg" id="indexImage8" alt="" style="width:157px;height:7px;"></div>
         <div id="wb_indexForm1" style="position:absolute;left:68px;top:955px;width:896px;height:382px;z-index:20;">
            <form name="Form1" method="post" action="<?php echo basename(__FILE__); ?>" enctype="multipart/form-data" id="indexForm1">
               <input type="text" id="indexEditbox3" style="position:absolute;left:207px;top:33px;width:468px;height:43px;line-height:43px;z-index:0;" name="Имя" value="" placeholder="&#1042;&#1072;&#1096;&#1077; &#1080;&#1084;&#1103;*">
               <input type="tel" id="indexEditbox4" style="position:absolute;left:207px;top:94px;width:468px;height:43px;line-height:43px;z-index:1;" name="Телефон" value="" placeholder="&#1042;&#1072;&#1096; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;*">
               <input type="email" id="indexEditbox5" style="position:absolute;left:207px;top:153px;width:468px;height:43px;line-height:43px;z-index:2;" name="Емаил" value="" placeholder="&#1042;&#1072;&#1096; &#1077;&#1084;&#1072;&#1080;&#1083;*">
               <div id="wb_indexImage10" style="position:absolute;left:48px;top:123px;width:124px;height:135px;z-index:3;">
                  <img src="images/strela.png" id="indexImage10" alt="" style="width:124px;height:135px;"></div>
               <div id="wb_indexText29" style="position:absolute;left:204px;top:299px;width:162px;height:40px;text-align:right;z-index:4;">
                  <span style="color:#000000;font-family:'trebuchet ms';font-size:15px;">СЕГОДНЯ ОДОБРЕНО<br>ЗАЯВОК:</span></div>
               <div id="wb_indexText30" style="position:absolute;left:392px;top:303px;width:139px;height:3px;z-index:5;text-align:left;">
&nbsp;</div>
               <div id="wb_indexImage12" style="position:absolute;left:388px;top:289px;width:171px;height:64px;z-index:6;">
                  <img src="images/i2_62.png" id="indexImage12" alt="" style="width:171px;height:64px;"></div>
               <div id="wb_indexText32" style="position:absolute;left:478px;top:299px;width:33px;height:42px;text-align:center;z-index:7;"><span class="style1">1</span></div>
               <div id="wb_indexText33" style="position:absolute;left:522px;top:298px;width:24px;height:42px;text-align:center;z-index:8;"><span class="style1">5</span></div>
               <div id="wb_indexText34" style="position:absolute;left:438px;top:300px;width:33px;height:42px;text-align:center;z-index:9;">
                  <span style="color:#000000;font-family:tahoma;font-size:35px;">0</span></div>
               <div id="wb_indexText35" style="position:absolute;left:397px;top:300px;width:33px;height:42px;text-align:center;z-index:10;">
                  <span style="color:#000000;font-family:tahoma;font-size:35px;">0</span></div>
               <input type="submit" id="indexButton1" name="" value="" style="position:absolute;left:183px;top:212px;width:541px;height:62px;z-index:11;">
            </form>
         </div>
         <div id="wb_indexClipArt3" style="position:absolute;left:112px;top:690px;width:100px;height:100px;z-index:21;">
            <img src="images/img0005.png" id="indexClipArt3" alt="" style="border-width:0;width:100px;height:100px;"></div>
         <div id="wb_indexText22" style="position:absolute;left:131px;top:700px;width:66px;height:70px;text-align:center;z-index:22;">
            <span style="color:#ffffff;font-family:tahoma;font-size:29px;">1<br>ШАГ</span></div>
         <div id="wb_indexClipArt4" style="position:absolute;left:447px;top:691px;width:100px;height:100px;z-index:23;">
            <img src="images/img0006.png" id="indexClipArt4" alt="" style="border-width:0;width:100px;height:100px;"></div>
         <div id="wb_indexText23" style="position:absolute;left:464px;top:700px;width:66px;height:70px;text-align:center;z-index:24;">
            <span style="color:#ffffff;font-family:tahoma;font-size:29px;">2<br>ШАГ</span></div>
         <div id="wb_indexClipArt5" style="position:absolute;left:772px;top:689px;width:100px;height:100px;z-index:25;">
            <img src="images/img0007.png" id="indexClipArt5" alt="" style="border-width:0;width:100px;height:100px;"></div>
         <div id="wb_indexText24" style="position:absolute;left:793px;top:698px;width:66px;height:70px;text-align:center;z-index:26;">
            <span style="color:#ffffff;font-family:tahoma;font-size:29px;">3<br>ШАГ</span></div>
         <div id="wb_indexImage9" style="position:absolute;left:582px;top:735px;width:157px;height:7px;z-index:27;">
            <img src="images/arrow.jpg" id="indexImage9" alt="" style="width:157px;height:7px;"></div>
         <div id="wb_indexText25" style="position:absolute;left:93px;top:809px;width:139px;height:23px;z-index:28;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:17px;"><strong>Оставьте заявку</strong></span></div>
         <div id="wb_indexText26" style="position:absolute;left:411px;top:808px;width:164px;height:46px;text-align:center;z-index:29;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:17px;"><strong>Дождитесь <br>подтверждения</strong></span></div>
         <div id="wb_indexText27" style="position:absolute;left:728px;top:808px;width:193px;height:46px;text-align:center;z-index:30;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:17px;"><strong>Получите наличные<br>уже сегодня!</strong></span></div>
         <div id="wb_indexImage4" style="position:absolute;left:68px;top:888px;width:896px;height:93px;z-index:31;">
            <img src="images/i1_1.png" id="indexImage4" alt="" style="width:896px;height:93px;"></div>
         <div id="wb_indexText21" style="position:absolute;left:288px;top:895px;width:521px;height:37px;z-index:32;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>ЗАПОЛНИТЕ ПРОСТУЮ ФОРМУ</strong></span></div>
         <div id="wb_indexText28" style="position:absolute;left:241px;top:936px;width:574px;height:23px;z-index:33;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:17px;">Чтобы получить положительное решение в течении 30-ти минут<strong> </strong></span></div>
         <div id="wb_indexImage15" style="position:absolute;left:78px;top:1421px;width:55px;height:55px;z-index:34;">
            <img src="images/ico1.png" id="indexImage15" alt="" style="width:55px;height:55px;"></div>
         <div id="wb_indexText17" style="position:absolute;left:147px;top:1417px;width:187px;height:63px;z-index:35;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Подтверждение выдачи<br> кредита в течении 30-ти минут</strong></span></div>
         <div id="wb_indexImage16" style="position:absolute;left:391px;top:1420px;width:55px;height:55px;z-index:36;">
            <img src="images/ico2.png" id="indexImage16" alt="" style="width:55px;height:55px;"></div>
         <div id="wb_indexText36" style="position:absolute;left:480px;top:1418px;width:181px;height:42px;z-index:37;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Без проверки кредитной истории</strong></span></div>
         <div id="wb_indexImage19" style="position:absolute;left:699px;top:1420px;width:54px;height:53px;z-index:38;">
            <img src="images/ico5.png" id="indexImage19" alt="" style="width:54px;height:53px;"></div>
         <div id="wb_indexText37" style="position:absolute;left:770px;top:1419px;width:181px;height:63px;z-index:39;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Не надо никуда ехать.<br>Решение получаете онлайн</strong></span></div>
         <div id="wb_indexImage14" style="position:absolute;left:699px;top:1502px;width:55px;height:54px;z-index:40;">
            <img src="images/ico6.png" id="indexImage14" alt="" style="width:55px;height:54px;"></div>
         <div id="wb_indexText38" style="position:absolute;left:770px;top:1501px;width:181px;height:63px;z-index:41;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Прозрачные условия кредитования.Никаких скрытых комиссий!</strong></span></div>
         <div id="wb_indexText39" style="position:absolute;left:481px;top:1499px;width:181px;height:63px;z-index:42;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Самые низкие ставки по ежемесячным выплатам</strong></span></div>
         <div id="wb_indexImage17" style="position:absolute;left:370px;top:1485px;width:86px;height:78px;z-index:43;">
            <img src="images/benefits_img_4.png" id="indexImage17" alt="" style="width:86px;height:78px;"></div>
         <div id="wb_indexText40" style="position:absolute;left:147px;top:1499px;width:127px;height:42px;z-index:44;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Без справок и поручителей</strong></span></div>
         <div id="wb_indexImage18" style="position:absolute;left:78px;top:1503px;width:54px;height:52px;z-index:45;">
            <img src="images/ico4.png" id="indexImage18" alt="" style="width:54px;height:52px;"></div>
         <div id="wb_indexImage20" style="position:absolute;left:67px;top:1587px;width:896px;height:51px;z-index:46;">
            <img src="images/i1_1.png" id="indexImage20" alt="" style="width:896px;height:51px;"></div>
         <div id="wb_indexText16" style="position:absolute;left:207px;top:1594px;width:646px;height:37px;z-index:47;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>ВЫГОДНЫЕ УСЛОВИЯ АВТОКРЕДИТОВАНИЯ</strong></span></div>
         <div id="wb_indexImage22" style="position:absolute;left:68px;top:2209px;width:896px;height:51px;z-index:48;">
            <img src="images/i3_1.png" id="indexImage22" alt="" style="width:896px;height:51px;"></div>
         <div id="wb_indexText43" style="position:absolute;left:392px;top:2212px;width:272px;height:37px;z-index:49;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>НАМ ДОВЕРЯЮТ!</strong></span></div>
         <div id="wb_indexText6" style="position:absolute;left:108px;top:2276px;width:817px;height:96px;text-align:center;z-index:50;">
            <div style="line-height:32px;"><span style="color:#456474;font-family:'times new roman';font-size:21px;">Мы работаем на рынке автокредитования уже много лет и заботимся о наших клиентах, их </span></div>
            <div style="line-height:32px;"><span style="color:#456474;font-family:'times new roman';font-size:21px;">безопасности и конечно о своём имидже. Мы работаем честно и </span><span style="color:#ff0000;font-family:'times new roman';font-size:21px;">не берём</span><span style="color:#456474;font-family:'times new roman';font-size:21px;"> никаких </span></div>
            <div style="line-height:23px;"><span style="color:#456474;font-family:'times new roman';font-size:21px;">предварительных оплат и страховок! </span></div>
         </div>
         <div id="wb_indexImage6" style="position:absolute;left:189px;top:2379px;width:661px;height:513px;z-index:51;">
            <img src="images/img0012.png" id="indexImage6" alt="" style="width:661px;height:513px;"></div>
         <div id="wb_indexText7" style="position:absolute;left:265px;top:2397px;width:191px;height:46px;text-align:center;z-index:52;">
            <span style="color:#2e3b50;font-family:'palatino linotype';font-size:17px;"><strong>КРЕДИТНЫЙ ЦЕНТР<br>ДЕМЕЕВСКИЙ</strong></span></div>
         <div id="wb_indexImage7" style="position:absolute;left:204px;top:2402px;width:50px;height:28px;z-index:53;">
            <img src="images/logo.png" id="indexImage7" alt="" style="width:50px;height:28px;"></div>
         <div id="wb_indexImage23" style="position:absolute;left:68px;top:2925px;width:897px;height:51px;z-index:54;">
            <img src="images/i1_1.png" id="indexImage23" alt="" style="width:897px;height:51px;"></div>
         <div id="wb_indexText8" style="position:absolute;left:388px;top:2929px;width:280px;height:37px;z-index:55;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>НАШИ КЛИЕНТЫ</strong></span></div>
         <div id="wb_indexShape7" style="position:absolute;left:79px;top:2988px;width:284px;height:244px;z-index:56;">
            <img src="images/img0002.png" id="indexShape7" alt="" style="border-width:0;width:284px;height:244px;"></div>
         <div id="wb_indexText9" style="position:absolute;left:99px;top:3101px;width:243px;height:115px;z-index:57;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><em>Не хватало денег на покупку авто, взяла кредит. Выдали деньги как и обещали, в течении 1-часа. Спасибо Вам, очень выручили) Рекомендую всем!</em></span></div>
         <div id="wb_indexImage24" style="position:absolute;left:90px;top:2997px;width:92px;height:92px;z-index:58;">
            <img src="images/rina.png" alt="" name="indexImage24" id="indexImage24" style="width:92px;height:92px;"></div>
         <div id="wb_indexClipArt6" style="position:absolute;left:312px;top:3006px;width:22px;height:18px;z-index:59;">
            <img src="images/img0003.png" id="indexClipArt6" alt="" style="border-width:0;width:22px;height:18px;"></div>
         <div id="wb_indexText12" style="position:absolute;left:125px;top:3284px;width:782px;height:81px;text-align:center;z-index:60;">
            <span style="color:#000000;font-family:'palatino linotype';font-size:20px;"><strong>ОФОРМИТЕ ЗАЯВКУ НА КРЕДИТ ПОД АВТО  ПРЯМО СЕЙЧАС И ПОЛУЧИТЕ РЕШЕНИЕ О ВЫДАЧЕ УЖЕ <br>
        </strong></span><span style="color:#dc143c;font-family:'palatino linotype';font-size:20px;"><strong>ЧЕРЕЗ 30 МИНУТ !</strong></span></div>
         <div id="wb_indexText47" style="position:absolute;left:198px;top:2997px;width:91px;height:46px;z-index:61;text-align:left;">
            <span style="color:#2f4f4f;font-family:'palatino linotype';font-size:17px;"><strong>Светлана Смирнова <br>
            </strong></span></div>
         <div id="wb_indexText10" style="position:absolute;left:185px;top:3066px;width:174px;height:22px;z-index:62;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;">Директор, г.Васильков</span></div>
         <div id="wb_indexText11" style="position:absolute;left:395px;top:3102px;width:243px;height:138px;z-index:63;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><em>Взял кредит на открытие собственного дела под залог автомобиля. Очень доволен быстрым оформлением. Погасил досрочно, сэкономил на процентах</em></span></div>
         <div id="wb_indexText48" style="position:absolute;left:494px;top:2998px;width:99px;height:69px;z-index:64;text-align:left;">
            <span style="color:#2f4f4f;font-family:'palatino linotype';font-size:17px;"><strong>Валерий<br>
        Борисенко</strong></span></div>
         <div id="wb_indexClipArt1" style="position:absolute;left:608px;top:3007px;width:22px;height:18px;z-index:65;">
            <img src="images/img0014.png" id="indexClipArt1" alt="" style="border-width:0;width:22px;height:18px;"></div>
         <div id="wb_indexImage40" style="position:absolute;left:384px;top:2998px;width:92px;height:92px;z-index:66;">
            <img src="images/valera.png" id="indexImage40" alt="" style="width:92px;height:92px;"></div>
         <div id="wb_indexText49" style="position:absolute;left:484px;top:3063px;width:167px;height:22px;z-index:67;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;">Менеджер г.Киев</span></div>
         <div id="wb_indexImage41" style="position:absolute;left:688px;top:2998px;width:92px;height:92px;z-index:68;">
            <img src="images/sveta.png" id="indexImage41" alt="" style="width:92px;height:92px;"></div>
         <div id="wb_indexText52" style="position:absolute;left:790px;top:2998px;width:99px;height:46px;z-index:69;text-align:left;">
            <span style="color:#2f4f4f;font-family:'palatino linotype';font-size:17px;"><strong>Ольга<br>
        Бирюкова</strong></span></div>
         <div id="wb_indexClipArt2" style="position:absolute;left:904px;top:3007px;width:22px;height:18px;z-index:70;">
            <img src="images/img0015.png" id="indexClipArt2" alt="" style="border-width:0;width:22px;height:18px;"></div>
         <div id="wb_indexText50" style="position:absolute;left:691px;top:3102px;width:243px;height:115px;z-index:71;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><em>Я уже становлюсь вашим постоянным клиентом) Брала автокредит два раза, сейчас ещё дочке будем брать авто в кредит. Спасибо Вам большое!</em></span></div>
         <div id="wb_indexText51" style="position:absolute;left:780px;top:3063px;width:167px;height:22px;z-index:72;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;">Экономист, г.Бровары</span></div>
         <div id="wb_indexInlineFrame1" style="position:absolute;left:406px;top:3378px;width:211px;height:46px;z-index:73;">
            <a id="indexInlineFrame1" title="" href="./zayavka_vnizu.php?iframe"><img src="images/button%20%2812%29.png" style="width:211px;height:46px;" alt=""></a>
         </div>
         <div id="wb_indexShape4" style="position:absolute;left:67px;top:1389px;width:897px;height:181px;z-index:74;">
            <img src="images/img0010.png" id="indexShape4" alt="" style="border-width:0;width:897px;height:181px;"></div>
         <div id="wb_indexImage13" style="position:absolute;left:67px;top:1356px;width:897px;height:51px;z-index:75;">
            <img src="images/i1_1.png" id="indexImage13" alt="" style="width:897px;height:51px;"></div>
         <div id="wb_indexText1" style="position:absolute;left:148px;top:0px;width:302px;height:74px;text-align:center;z-index:76;">
            <span style="color:#2e3b50;font-family:'palatino linotype';font-size:27px;"><strong>КРЕДИТНЫЙ ЦЕНТР<br>ДЕМЕЕВСКИЙ</strong></span></div>
         <div id="wb_indexText3" style="position:absolute;left:462px;top:1px;width:225px;height:32px;text-align:center;z-index:77;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:24px;">+38-067-444-05-95</span></div>
         <div id="wb_indexText2" style="position:absolute;left:463px;top:31px;width:225px;height:32px;text-align:center;z-index:78;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:24px;">+38-099-329-33-14</span></div>
         <div id="wb_indexInlineFrame2" style="position:absolute;left:714px;top:13px;width:249px;height:41px;z-index:79;">
            <a id="indexInlineFrame2" title="Заказать обратный звонок" href="./callback.php?iframe"><img src="images/zv.png" style="width:249px;height:41px;" alt="Заказать обратный звонок"></a>
         </div>
         <div id="wb_indexImage5" style="position:absolute;left:727px;top:1987px;width:186px;height:191px;z-index:80;">
            <img src="images/guarantee1.png" id="indexImage5" alt="" style="width:186px;height:191px;"></div>
         <div id="wb_indexImage1" style="position:absolute;left:868px;top:3198px;width:86px;height:85px;z-index:81;">
            <img src="images/service_guarantee_580px.jpg" id="indexImage1" alt="" style="width:86px;height:85px;"></div>
         <div id="wb_indexImage21" style="position:absolute;left:65px;top:14px;width:71px;height:39px;z-index:82;">
            <img src="images/logo.png" id="indexImage21" alt="" style="width:71px;height:39px;"></div>
         <div id="wb_indexText31" style="position:absolute;left:240px;top:1360px;width:618px;height:37px;z-index:83;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>АВТОКРЕДИТ БЕЗ ЛИШНИХ ВОПРОСОВ </strong></span></div>
      </div>
   </div>
<div id="indexLayer2" style="position:absolute;text-align:center;left:0px;top:75px;width:100%;height:577px;z-index:116;" title="">
  <div id="indexLayer2_Container" style="width:1000px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
    <div id="wb_indexText5" style="position:absolute;left:128px;top:251px;width:308px;height:56px;z-index:84;text-align:left;"> <span style="color:#e6e6fa;font-family:'palatino linotype';font-size:21px;">Заполните заявку и получите Ваши деньги через 1-час</span></div>
    <div id="wb_indexText4" style="position:absolute;left:57px;top:95px;width:435px;height:114px;text-align:center;z-index:85;"> <span style="color:#e9967a;font-family:'arial black';font-size:27px;">СРОЧНО НУЖНЫ НАЛИЧНЫЕ ПОД<br>
      ЗАЛОГ АВТОМОБИЛЯ ?</span></div>
    <div id="wb_indexText18" style="position:absolute;left:782px;top:51px;width:142px;height:28px;z-index:86;text-align:left;"><span class="style2">в месяц </span></div>
    <div id="wb_indexText19" style="position:absolute;left:770px;top:18px;width:207px;height:28px;z-index:87;text-align:left;"> <span style="color:#ffffff;font-family:'palatino linotype';font-size:21px;"> От 3,0 % </span></div>
    <div id="wb_indexText20" style="position:absolute;left:68px;top:5px;width:464px;height:46px;text-align:center;z-index:88;"> <span style="color:#ffffff;font-family:'palatino linotype';font-size:17px;">Кредит под залог автомобиля в Киеве, Харькове, Одессе. <br>
      В залог либо на покупку. </span></div>
    <div id="wb_indexImage3" style="position:absolute;left:179px;top:4px;width:720px;height:572px;z-index:89;"> <img src="images/deva1.png" id="indexImage3" alt="" style="width:720px;height:572px;"></div>
  </div>
</div>
   <div id="indexLayer3" style="position:absolute;text-align:center;left:0px;top:3451px;width:100%;height:102px;z-index:117;" title="">
      <div id="indexLayer3_Container" style="width:1002px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
         <div id="wb_indexImage27" style="position:absolute;left:68px;top:8px;width:36px;height:23px;z-index:102;">
            <img src="images/logo.png" id="indexImage27" alt="" style="width:36px;height:23px;"></div>
         <div id="wb_indexText13" style="position:absolute;left:109px;top:7px;width:285px;height:21px;z-index:103;text-align:left;">
            <span style="color:#2e3b50;font-family:'palatino linotype';font-size:15px;"><strong>КРЕДИТНЫЙ ЦЕНТР ДЕМЕЕВСКИЙ</strong></span></div>
         <div id="wb_indexText15" style="position:absolute;left:223px;top:51px;width:133px;height:18px;text-align:center;z-index:104;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">+38 (099) 329-33-14</span></div>
         <div id="wb_indexText42" style="position:absolute;left:397px;top:76px;width:212px;height:20px;text-align:right;z-index:105;">
            <span style="color:#000000;font-family:'trebuchet ms';font-size:15px;">@ 2018. Все права защищены</span></div>
         <div id="wb_indexText45" style="position:absolute;left:103px;top:30px;width:245px;height:18px;text-align:center;z-index:106;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">Киев. Проспект 40-Летия Октября, 17</span></div>
         <div id="wb_indexText14" style="position:absolute;left:109px;top:52px;width:120px;height:36px;text-align:center;z-index:107;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">+38 (067) 444-05-95;</span></div>
         <div id="wb_indexText46" style="position:absolute;left:100px;top:70px;width:226px;height:18px;text-align:center;z-index:108;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">email: boguslav.invest@gmail.com</span></div>
         <div id="wb_indexText44" style="position:absolute;left:652px;top:6px;width:297px;height:36px;z-index:109;text-align:left;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">Кредит под залог автомобиля.<br>
        В залог либо на покупку.</span></div>
         <div id="wb_indexImage30" style="position:absolute;left:752px;top:55px;width:32px;height:32px;z-index:110;">
            <img src="images/soc2.png" id="indexImage30" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage29" style="position:absolute;left:710px;top:55px;width:32px;height:32px;z-index:111;">
            <img src="images/soc1.png" id="indexImage29" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage31" style="position:absolute;left:794px;top:55px;width:32px;height:32px;z-index:112;">
            <img src="images/soc3.png" id="indexImage31" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage32" style="position:absolute;left:836px;top:56px;width:32px;height:32px;z-index:113;">
            <img src="images/soc4.png" id="indexImage32" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage34" style="position:absolute;left:878px;top:57px;width:32px;height:32px;z-index:114;">
            <img src="images/soc5.png" id="indexImage34" alt="" style="width:32px;height:32px;"></div>
      </div>
   </div>
   <div id="indexLayer4" style="position:absolute;text-align:center;left:0px;top:3447px;width:100%;height:3px;z-index:118;" title="">
      <div id="indexLayer4_Container" style="width:1002px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
      </div>
   </div>
   <div id="container">
   </div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-102591302-1', 'auto');
  ga('send', 'pageview');

</script>

<!--LiveInternet counter--><script type="text/javascript">
document.write("<a href='//www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t52.6;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: �������� ����� ���������� �"+
" ����������� �� 24 ����' "+
"border='0' width='88' height='31'><\/a>")
</script><!--/LiveInternet-->

<!-- Yandex.Metrika counter -->
 <script type="text/javascript">
var yaParams = {ip_adress: "<? echo $_SERVER['REMOTE_ADDR'];?>"};
//��������� �������� ip_adress � ���������� � ���� IP ����������
</script> 
 
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter30760493 = new Ya.Metrika({id:30760493, params:window.yaParams,
//�������� ���� �������� ��������� params
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });
    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";
    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
   <noscript><div><img src="//mc.yandex.ru/watch/30760493" style="position:absolute; left:-9999px;" alt=""/></div></noscript>
<!-- /Yandex.Metrika counter -->
<link rel="stylesheet" href="https://cdn.envybox.io/widget/cbk.css">
<script type="text/javascript" src="https://cdn.envybox.io/widget/cbk.js?wcb_code=daf99fe9286af3abfd8f954e0b78bcb4" charset="UTF-8" async=""></script></body>
</html>