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
      $subject = 'Нижняя заявка на кредит под залог :';
      $message = 'Данные на зёмщика :';
      $success_url = './zayavka_vnizu-ok.php';
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
		$text = htmlspecialchars('З.кредит.  '.$client_name.' тел: '.$client_phone.''.$client_zayavka_date);
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
<title>Отправка заявки</title>
<meta name="generator" content="WYSIWYG Web Builder 9 - http://www.wysiwygwebbuilder.com">
<link href="wb.validation.css" rel="stylesheet" type="text/css">
<link href="DemeevkaCredit.css" rel="stylesheet" type="text/css">
<link href="zayavka_vnizu.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="wb.validation.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
   $("#Form2").submit(function(event)
   {
      var isValid = $.validate.form(this);
      return isValid;
   });
   $("#Editbox4").validate(
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
   $("#Editbox5").validate(
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
   $("#zayavkaEditbox1").validate(
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
});
</script>
</head>
<body>
   <div id="container">
      <div id="wb_Shape10" style="position:absolute;left:85px;top:16px;width:457px;height:351px;z-index:4;">
         <img src="images/img0018.png" id="Shape10" alt="" style="border-width:0;width:457px;height:351px;">
      </div>
      <div id="wb_Text34" style="position:absolute;left:84px;top:20px;width:438px;height:82px;text-align:center;z-index:5;">
         <span style="color:#246187;font-family:arial;font-size:35px;"><strong>Отправить заявку на получение кредита</strong></span>
      </div>
      <div id="wb_Form2" style="position:absolute;left:158px;top:106px;width:299px;height:235px;z-index:6;">
         <form name="Form1" method="post" action="<?php echo basename(__FILE__); ?>" enctype="multipart/form-data" id="Form2">
            <input type="text" id="Editbox4" style="position:absolute;left:35px;top:14px;width:220px;height:35px;line-height:35px;z-index:0;" name="Имя" value="" placeholder="&#1042;&#1072;&#1096;&#1077; &#1080;&#1084;&#1103;*">
            <input type="submit" id="Button3" name="" value="" style="position:absolute;left:58px;top:168px;width:177px;height:51px;z-index:1;">
            <input type="tel" id="Editbox5" style="position:absolute;left:35px;top:63px;width:220px;height:36px;line-height:36px;z-index:2;" name="Телефон" value="" placeholder="&#1042;&#1072;&#1096; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;*">
            <input type="email" id="zayavkaEditbox1" style="position:absolute;left:34px;top:115px;width:220px;height:36px;line-height:36px;z-index:3;" name="Email" value="" placeholder="&#1042;&#1072;&#1096; email*">
         </form>
      </div>
   </div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-102591302-1', 'auto');
  ga('send', 'pageview');

</script>



<!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter30760493 = new Ya.Metrika({id:30760493,
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
<!-- /Yandex.Metrika counter --></body>
</html>