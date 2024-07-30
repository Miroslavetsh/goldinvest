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
      $subject = 'ГЛАВНАЯ заявка на кредит под залог:';
      $message = 'Данные на заёмщика:';
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
<link href="goldinvest_business.css" rel="stylesheet" type="text/css">
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
</head>
<body>
   <div id="indexLayer1" style="position:absolute;text-align:center;left:2px;top:2px;width:100%;height:4068px;z-index:113;" title="">
      <div id="indexLayer1_Container" style="width:1000px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
         <div id="wb_indexShape4" style="position:absolute;left:67px;top:1391px;width:896px;height:648px;z-index:12;">
            <img src="images/img0010.png" id="indexShape4" alt="" style="border-width:0;width:896px;height:648px;"></div>
         <div id="wb_indexImage5" style="position:absolute;left:761px;top:1787px;width:172px;height:197px;z-index:13;">
            <img src="images/guarantee3.png" id="indexImage5" alt="" style="width:172px;height:197px;"></div>
         <div id="wb_indexBulletedList2" style="position:absolute;left:92px;top:1412px;width:856px;height:622px;text-align:center;z-index:14;">
            <div>
               <div class="bullet" style="height:284px;">&bull;</div>
               <div class="item" style="height:284px;text-align:left;"><div><span style="color:#006400;font-family:'palatino linotype';font-size:15px;"><strong>ДЛЯ СУБЪЕКТОВ ПРЕДПРИНИМАТЕЛЬСКОЙ ДЕЯТЕЛЬНОСТИ (&quot;СПД&quot;, &quot;ООО&quot;):</strong></span><strong></strong></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-на развитие бизнеса от 130 000 грн. и выше;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-официально зарегистрированным;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-работающим с официальной выручкой и оборотами по банковским счетам;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#000000;font-family:'palatino linotype';font-size:15px;"><strong><u>не рассматриваются следующие виды деятельности:</u></strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-страхование;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-консультационные услуги;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-финансовое посредничество;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-нелегальная торговля;</strong></span></div>
                  <div style="line-height:23px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-риэлторские услуги;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:110px;">&bull;</div>
               <div class="item" style="height:110px;text-align:left;"><div><span style="color:#006400;font-family:'palatino linotype';font-size:15px;"><strong>ПОД ЗАЛОГ ОБОРОТНОГО ТОВАРА </strong></span><span style="color:#000000;font-family:'palatino linotype';font-size:15px;">(от 130 000 грн.)</span><span style="color:#006400;font-family:'palatino linotype';font-size:15px;"><strong>:</strong></span><strong></strong></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-находящегося на складах либо в обороте бизнеса;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-продуктовая и товарная группа; </strong></span></div>
                  <div style="line-height:23px;"><span style="color:#000000;font-family:'palatino linotype';font-size:15px;"><strong><u>каждый проект кредитования рассматриваем индивидуально</u></strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:168px;">&bull;</div>
               <div class="item" style="height:168px;text-align:left;"><div><span style="color:#006400;font-family:'palatino linotype';font-size:15px;"><strong>ДОЛЕВОЕ, ИНВЕСТИЦИОННОЕ УЧАСТИЕ В БИЗНЕС ПРОЕКТАХ</strong></span><span style="color:#000000;font-family:'palatino linotype';font-size:15px;"> (от 130 000 грн.)</span><span style="color:#006400;font-family:'palatino linotype';font-size:15px;"><strong>:</strong></span><strong></strong></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-строительство;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-сельское хозяйство;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-торговля;</strong></span></div>
                  <div style="line-height:29px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>-производство;</strong></span></div>
                  <div style="line-height:23px;"><span style="color:#000000;font-family:'palatino linotype';font-size:15px;"><strong><u>каждый проект инвестирования рассматриваем индивидуально</u></strong></span></div>
               </div>
            </div>
         </div>
         <div id="wb_indexShape2" style="position:absolute;left:67px;top:965px;width:897px;height:372px;z-index:15;">
            <img src="images/img0020.png" id="indexShape2" alt="" style="border-width:0;width:897px;height:372px;"></div>
         <div id="wb_indexShape5" style="position:absolute;left:67px;top:671px;width:897px;height:198px;z-index:16;">
            <img src="images/img0013.png" id="indexShape5" alt="" style="border-width:0;width:897px;height:198px;"></div>
         <div id="wb_indexBulletedList1" style="position:absolute;left:92px;top:2283px;width:843px;height:424px;text-align:center;z-index:17;">
            <div>
               <div class="bullet" style="height:166px;">&bull;</div>
               <div class="item" style="height:166px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Годовая процентная ставка от 36% с оформлением. <br>(при минимальной выдаче кредита от 130 000 грн.)<br><br></strong></span><span style="color:#000000;font-family:'palatino linotype';font-size:15px;"><u>Пример расчёта</u>: <br></span><span style="color:#456474;font-family:'palatino linotype';font-size:15px;">При сумме кредита 130 000 грн., ежемесячная выплата процентов составит всего 3 900 грн. (при ставке 3% в месяц). Без скрытых комиссий и ежеквартальных перерасчётов процента. Итого выплата за год всего: 130 000 грн. (тело кредита) + 46 800 грн. (процент за пользование кредитом) итого 176 800 грн. за год.</span><span style="color:#000000;font-family:'palatino linotype';font-size:15px;"><u><br></u></span></div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">&bull;</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Сумма кредита - от 130 000 грн. и выше;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">&bull;</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Срок кредитования - от 3х до 6 месяцев с пролонгацией;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">&bull;</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Сами подготовим весь необходимый пакет документов (договора, нотариус и т.д.);</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">&bull;</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Возможно рефинансирование (пере кредитование прошлых кредитов)</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:44px;">&bull;</div>
               <div class="item" style="height:44px;text-align:left;"><div style="line-height:19px;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Тело кредита Вы можете оплатить в конце срока кредитного договора;</strong></span></div>
               </div>
            </div>
            <div style="clear:both">
               <div class="bullet" style="height:38px;">&bull;</div>
               <div class="item" style="height:38px;text-align:left;"><span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Нет никаких штрафов и комиссий за досрочное погашение кредита;</strong></span></div>
            </div>
         </div>
         <div id="wb_indexShape8" style="position:absolute;left:680px;top:3509px;width:284px;height:244px;z-index:18;">
            <img src="images/img0004.png" id="indexShape8" alt="" style="border-width:0;width:284px;height:244px;"></div>
         <div id="wb_indexShape1" style="position:absolute;left:375px;top:3510px;width:284px;height:244px;z-index:19;">
            <img src="images/img0008.png" id="indexShape1" alt="" style="border-width:0;width:284px;height:244px;"></div>
         <div id="wb_indexImage8" style="position:absolute;left:248px;top:732px;width:157px;height:7px;z-index:20;">
            <img src="images/arrow.jpg" id="indexImage8" alt="" style="width:157px;height:7px;"></div>
         <div id="wb_indexForm1" style="position:absolute;left:68px;top:955px;width:896px;height:382px;z-index:21;">
            <form name="Form1" method="post" action="<?php echo basename(__FILE__); ?>" enctype="multipart/form-data" id="indexForm1">
               <input type="text" id="indexEditbox3" style="position:absolute;left:207px;top:33px;width:468px;height:43px;line-height:43px;z-index:0;" name="Имя" value="" placeholder="&#1042;&#1072;&#1096;&#1077; &#1080;&#1084;&#1103;*">
               <input type="tel" id="indexEditbox4" style="position:absolute;left:207px;top:94px;width:468px;height:43px;line-height:43px;z-index:1;" name="Телефон" value="" placeholder="&#1042;&#1072;&#1096; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;*">
               <input type="text" id="indexEditbox5" style="position:absolute;left:207px;top:153px;width:468px;height:43px;line-height:43px;z-index:2;" name="На что деньги" value="" placeholder="&#1053;&#1072; &#1095;&#1090;&#1086; &#1085;&#1091;&#1078;&#1085;&#1099; &#1076;&#1077;&#1085;&#1100;&#1075;&#1080;*">
               <div id="wb_indexImage10" style="position:absolute;left:48px;top:123px;width:124px;height:135px;z-index:3;">
                  <img src="images/strela.png" id="indexImage10" alt="" style="width:124px;height:135px;"></div>
               <div id="wb_indexText29" style="position:absolute;left:204px;top:299px;width:162px;height:40px;text-align:right;z-index:4;">
                  <span style="color:#000000;font-family:'trebuchet ms';font-size:15px;">СЕГОДНЯ ОДОБРЕНО<br>ЗАЯВОК:</span></div>
               <div id="wb_indexText30" style="position:absolute;left:392px;top:303px;width:139px;height:3px;z-index:5;text-align:left;">
&nbsp;</div>
               <div id="wb_indexImage12" style="position:absolute;left:388px;top:289px;width:171px;height:64px;z-index:6;">
                  <img src="images/i2_62.png" id="indexImage12" alt="" style="width:171px;height:64px;"></div>
               <div id="wb_indexText32" style="position:absolute;left:478px;top:299px;width:33px;height:42px;text-align:center;z-index:7;">
                  <span style="color:#000000;font-family:tahoma;font-size:35px;">0</span></div>
               <div id="wb_indexText33" style="position:absolute;left:522px;top:298px;width:24px;height:42px;text-align:center;z-index:8;">
                  <span style="color:#000000;font-family:tahoma;font-size:35px;">7</span></div>
               <div id="wb_indexText34" style="position:absolute;left:438px;top:300px;width:33px;height:42px;text-align:center;z-index:9;">
                  <span style="color:#000000;font-family:tahoma;font-size:35px;">0</span></div>
               <div id="wb_indexText35" style="position:absolute;left:397px;top:300px;width:33px;height:42px;text-align:center;z-index:10;">
                  <span style="color:#000000;font-family:tahoma;font-size:35px;">0</span></div>
               <input type="submit" id="indexButton1" name="" value="" style="position:absolute;left:183px;top:212px;width:541px;height:62px;z-index:11;">
            </form>
         </div>
         <div id="wb_indexClipArt3" style="position:absolute;left:112px;top:690px;width:100px;height:100px;z-index:22;">
            <img src="images/img0005.png" id="indexClipArt3" alt="" style="border-width:0;width:100px;height:100px;"></div>
         <div id="wb_indexText22" style="position:absolute;left:131px;top:700px;width:66px;height:70px;text-align:center;z-index:23;">
            <span style="color:#ffffff;font-family:tahoma;font-size:29px;">1<br>ШАГ</span></div>
         <div id="wb_indexClipArt4" style="position:absolute;left:447px;top:691px;width:100px;height:100px;z-index:24;">
            <img src="images/img0006.png" id="indexClipArt4" alt="" style="border-width:0;width:100px;height:100px;"></div>
         <div id="wb_indexText23" style="position:absolute;left:464px;top:700px;width:66px;height:70px;text-align:center;z-index:25;">
            <span style="color:#ffffff;font-family:tahoma;font-size:29px;">2<br>ШАГ</span></div>
         <div id="wb_indexClipArt5" style="position:absolute;left:772px;top:689px;width:100px;height:100px;z-index:26;">
            <img src="images/img0007.png" id="indexClipArt5" alt="" style="border-width:0;width:100px;height:100px;"></div>
         <div id="wb_indexText24" style="position:absolute;left:793px;top:698px;width:66px;height:70px;text-align:center;z-index:27;">
            <span style="color:#ffffff;font-family:tahoma;font-size:29px;">3<br>ШАГ</span></div>
         <div id="wb_indexImage9" style="position:absolute;left:582px;top:735px;width:157px;height:7px;z-index:28;">
            <img src="images/arrow.jpg" id="indexImage9" alt="" style="width:157px;height:7px;"></div>
         <div id="wb_indexText25" style="position:absolute;left:93px;top:809px;width:139px;height:23px;z-index:29;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:17px;"><strong>Оставьте заявку</strong></span></div>
         <div id="wb_indexText26" style="position:absolute;left:411px;top:808px;width:164px;height:46px;text-align:center;z-index:30;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:17px;"><strong>Дождитесь <br>подтверждения</strong></span></div>
         <div id="wb_indexText27" style="position:absolute;left:728px;top:808px;width:193px;height:46px;text-align:center;z-index:31;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:17px;"><strong>Получите наличные<br>уже сегодня!</strong></span></div>
         <div id="wb_indexImage4" style="position:absolute;left:68px;top:888px;width:896px;height:93px;z-index:32;">
            <img src="images/i1_1.png" id="indexImage4" alt="" style="width:896px;height:93px;"></div>
         <div id="wb_indexText21" style="position:absolute;left:288px;top:895px;width:521px;height:37px;z-index:33;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>ЗАПОЛНИТЕ ПРОСТУЮ ФОРМУ</strong></span></div>
         <div id="wb_indexText28" style="position:absolute;left:241px;top:936px;width:574px;height:23px;z-index:34;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:17px;">Чтобы получить положительное решение в течении 30-ти минут<strong> </strong></span></div>
         <div id="wb_indexImage6" style="position:absolute;left:146px;top:2909px;width:737px;height:484px;z-index:35;">
            <img src="images/img0012.png" id="indexImage6" alt="" style="width:737px;height:484px;"></div>
         <div id="wb_indexImage23" style="position:absolute;left:66px;top:3451px;width:897px;height:51px;z-index:36;">
            <img src="images/i1_1.png" id="indexImage23" alt="" style="width:897px;height:51px;"></div>
         <div id="wb_indexText8" style="position:absolute;left:364px;top:3456px;width:297px;height:37px;z-index:37;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>НАШИ ЗАКАЗЧИКИ</strong></span></div>
         <div id="wb_indexShape7" style="position:absolute;left:67px;top:3510px;width:284px;height:244px;z-index:38;">
            <img src="images/img0002.png" id="indexShape7" alt="" style="border-width:0;width:284px;height:244px;"></div>
         <div id="wb_indexText9" style="position:absolute;left:85px;top:3623px;width:266px;height:115px;z-index:39;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><em>Не хватало денег на строительный проект. Привлекла долевые инвестиции. Оперативно и в срок сдали объект<br>Рекомендую!</em></span></div>
         <div id="wb_indexImage24" style="position:absolute;left:75px;top:3519px;width:92px;height:92px;z-index:40;">
            <img src="images/rina.png" id="indexImage24" alt="" style="width:92px;height:92px;"></div>
         <div id="wb_indexClipArt6" style="position:absolute;left:299px;top:3528px;width:22px;height:18px;z-index:41;">
            <img src="images/img0003.png" id="indexClipArt6" alt="" style="border-width:0;width:22px;height:18px;"></div>
         <div id="wb_indexText12" style="position:absolute;left:120px;top:3827px;width:782px;height:81px;text-align:center;z-index:42;">
            <span style="color:#000000;font-family:'palatino linotype';font-size:20px;"><strong>ОФОРМИТЕ ЗАЯВКУ НА КРЕДИТ ИЛИ ИНВЕСТИРОВАНИЕ ВАШЕГО ПРОЕКТА И ПОЛУЧИТЕ РЕШЕНИЕ УЖЕ <br></strong></span><span style="color:#dc143c;font-family:'palatino linotype';font-size:20px;"><strong>СЕГОДНЯ !</strong></span></div>
         <div id="wb_indexText47" style="position:absolute;left:185px;top:3519px;width:91px;height:46px;z-index:43;text-align:left;">
            <span style="color:#2f4f4f;font-family:'palatino linotype';font-size:17px;"><strong>Ирина <br>Крупнова</strong></span></div>
         <div id="wb_indexText10" style="position:absolute;left:184px;top:3571px;width:146px;height:44px;z-index:44;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;">предприниматель, <br>г. Одесса</span></div>
         <div id="wb_indexText11" style="position:absolute;left:397px;top:3626px;width:243px;height:115px;z-index:45;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><em>Взял кредит под залог партии джинсовой одежды. <br>Доволен быстрым оформлением. Погасил досрочно, сэкономил на процентах</em></span></div>
         <div id="wb_indexText48" style="position:absolute;left:497px;top:3521px;width:99px;height:69px;z-index:46;text-align:left;">
            <span style="color:#2f4f4f;font-family:'palatino linotype';font-size:17px;"><strong>Игорь <br>Антипенко</strong></span></div>
         <div id="wb_indexClipArt1" style="position:absolute;left:611px;top:3530px;width:22px;height:18px;z-index:47;">
            <img src="images/img0014.png" id="indexClipArt1" alt="" style="border-width:0;width:22px;height:18px;"></div>
         <div id="wb_indexImage40" style="position:absolute;left:386px;top:3521px;width:92px;height:92px;z-index:48;">
            <img src="images/valera.png" id="indexImage40" alt="" style="width:92px;height:92px;"></div>
         <div id="wb_indexText49" style="position:absolute;left:497px;top:3573px;width:167px;height:22px;z-index:49;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;">Бизнесмен, г.Киев</span></div>
         <div id="wb_indexImage41" style="position:absolute;left:689px;top:3519px;width:92px;height:92px;z-index:50;">
            <img src="images/sveta.png" id="indexImage41" alt="" style="width:92px;height:92px;"></div>
         <div id="wb_indexText52" style="position:absolute;left:799px;top:3519px;width:99px;height:46px;z-index:51;text-align:left;">
            <span style="color:#2f4f4f;font-family:'palatino linotype';font-size:17px;"><strong>Кристина<br>Марченко</strong></span></div>
         <div id="wb_indexClipArt2" style="position:absolute;left:913px;top:3528px;width:22px;height:18px;z-index:52;">
            <img src="images/img0015.png" id="indexClipArt2" alt="" style="border-width:0;width:22px;height:18px;"></div>
         <div id="wb_indexText50" style="position:absolute;left:700px;top:3623px;width:243px;height:115px;z-index:53;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><em>Срочно понадобились деньги на развитие ООО. После проверки документов получила 25 000 $ уже&nbsp; на следующий день.<br>Спасибо огромное!</em></span></div>
         <div id="wb_indexImage13" style="position:absolute;left:67px;top:1356px;width:897px;height:51px;z-index:54;">
            <img src="images/i1_1.png" id="indexImage13" alt="" style="width:897px;height:51px;"></div>
         <div id="wb_indexText1" style="position:absolute;left:148px;top:0px;width:302px;height:74px;text-align:center;z-index:55;">
            <span style="color:#2e3b50;font-family:'palatino linotype';font-size:27px;"><strong>КРЕДИТНЫЙ ЦЕНТР<br>ДЕМЕЕВСКИЙ</strong></span></div>
         <div id="wb_indexText3" style="position:absolute;left:462px;top:1px;width:225px;height:36px;text-align:center;z-index:56;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:27px;">+38-067-444-05-95</span></div>
         <div id="wb_indexText2" style="position:absolute;left:463px;top:31px;width:225px;height:36px;text-align:center;z-index:57;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:27px;">+38-099-329-33-14</span></div>
         <div id="wb_indexInlineFrame2" style="position:absolute;left:714px;top:13px;width:249px;height:41px;z-index:58;">
            <a id="indexInlineFrame2" title="Заказать обратный звонок" href="./callback.php?iframe"><img src="images/zv.png" style="width:249px;height:41px;" alt="Заказать обратный звонок"></a>
         </div>
         <div id="wb_indexImage1" style="position:absolute;left:843px;top:3708px;width:106px;height:103px;z-index:59;">
            <img src="images/olesn.servis.png" id="indexImage1" alt="" style="width:106px;height:103px;"></div>
         <div id="wb_indexImage21" style="position:absolute;left:65px;top:14px;width:71px;height:39px;z-index:60;">
            <img src="images/logo.png" id="indexImage21" alt="" style="width:71px;height:39px;"></div>
         <div id="wb_indexText31" style="position:absolute;left:240px;top:1360px;width:548px;height:37px;z-index:61;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>ВЫДАЁМ КРЕДИТЫ НА БИЗНЕС ЦЕЛИ</strong></span></div>
         <div id="wb_indexInlineFrame1" style="position:absolute;left:403px;top:3937px;width:211px;height:46px;z-index:62;">
            <a id="indexInlineFrame1" title="" href="./zayavka_vnizu.php?iframe"><img src="images/button%20%2812%29.png" style="width:211px;height:46px;" alt=""></a>
         </div>
         <div id="wb_indexText6" style="position:absolute;left:135px;top:2799px;width:749px;height:90px;text-align:center;z-index:63;">
            <div style="line-height:30px;"><span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><strong>Мы работаем на рынке кредитования и инвестиций уже много лет и заботимся о наших </strong></span></div>
            <div style="line-height:30px;"><span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><strong>клиентах, их безопасности и конечно о своём имидже. Мы работаем честно и </strong></span><span style="color:#ff0000;font-family:'palatino linotype';font-size:16px;"><strong>не берём</strong></span><span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><strong> </strong></span></div>
            <div style="line-height:22px;"><span style="color:#456474;font-family:'palatino linotype';font-size:16px;"><strong>никаких предварительных оплат и страховок! </strong></span></div>
         </div>
         <div id="wb_indexShape6" style="position:absolute;left:69px;top:2761px;width:896px;height:669px;z-index:64;">
            <img src="images/img0009.png" id="indexShape6" alt="" style="border-width:0;width:896px;height:669px;"></div>
         <div id="wb_indexImage22" style="position:absolute;left:69px;top:2730px;width:896px;height:51px;z-index:65;">
            <img src="images/i3_1.png" id="indexImage22" alt="" style="width:896px;height:51px;"></div>
         <div id="wb_indexShape3" style="position:absolute;left:67px;top:2252px;width:897px;height:459px;z-index:66;">
            <img src="images/img0011.png" id="indexShape3" alt="" style="border-width:0;width:897px;height:459px;"></div>
         <div id="wb_indexImage20" style="position:absolute;left:67px;top:2218px;width:896px;height:51px;z-index:67;">
            <img src="images/i1_1.png" id="indexImage20" alt="" style="width:896px;height:51px;"></div>
         <div id="wb_indexText16" style="position:absolute;left:227px;top:2223px;width:562px;height:37px;z-index:68;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>ВЫГОДНЫЕ УСЛОВИЯ КРЕДИТОВАНИЯ</strong></span></div>
         <div id="wb_indexText43" style="position:absolute;left:393px;top:2733px;width:272px;height:37px;z-index:69;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>НАМ ДОВЕРЯЮТ!</strong></span></div>
         <div id="wb_indexText51" style="position:absolute;left:802px;top:3570px;width:133px;height:44px;z-index:70;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:16px;">хозяйка фирмы, <br>г. Харьков</span></div>
         <div id="wb_indexText18" style="position:absolute;left:154px;top:2116px;width:181px;height:63px;z-index:71;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Не надо никуда ехать.<br>Решение получаете онлайн</strong></span></div>
         <div id="wb_indexImage26" style="position:absolute;left:352px;top:2104px;width:86px;height:78px;z-index:72;">
            <img src="images/benefits_img_4.png" id="indexImage26" alt="" style="width:86px;height:78px;"></div>
         <div id="wb_indexText41" style="position:absolute;left:462px;top:2117px;width:181px;height:63px;z-index:73;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Самые низкие ставки по ежемесячным выплатам</strong></span></div>
         <div id="wb_indexImage2" style="position:absolute;left:672px;top:2122px;width:55px;height:54px;z-index:74;">
            <img src="images/ico6.png" id="indexImage2" alt="" style="width:55px;height:54px;"></div>
         <div id="wb_indexText53" style="position:absolute;left:747px;top:2115px;width:181px;height:63px;z-index:75;text-align:left;">
            <span style="color:#456474;font-family:'palatino linotype';font-size:15px;"><strong>Прозрачные условия кредитования.Никаких скрытых комиссий!</strong></span></div>
         <div id="wb_indexImage25" style="position:absolute;left:80px;top:2121px;width:54px;height:53px;z-index:76;">
            <img src="images/ico5.png" id="indexImage25" alt="" style="width:54px;height:53px;"></div>
         <div id="wb_indexShape9" style="position:absolute;left:68px;top:2097px;width:895px;height:100px;z-index:77;">
            <img src="images/img0021.png" id="indexShape9" alt="" style="border-width:0;width:895px;height:100px;"></div>
         <div id="wb_indexImage14" style="position:absolute;left:67px;top:2059px;width:896px;height:51px;z-index:78;">
            <img src="images/i1_1.png" id="indexImage14" alt="" style="width:896px;height:51px;"></div>
         <div id="wb_indexText17" style="position:absolute;left:400px;top:2063px;width:255px;height:37px;z-index:79;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:27px;"><strong>С НАМИ УДОБНО</strong></span></div>
         <div id="wb_indexImage7" style="position:absolute;left:181px;top:2946px;width:50px;height:28px;z-index:80;">
            <img src="images/logo.png" id="indexImage7" alt="" style="width:50px;height:28px;"></div>
         <div id="wb_indexText7" style="position:absolute;left:241px;top:2941px;width:191px;height:46px;text-align:center;z-index:81;">
            <span style="color:#2e3b50;font-family:'palatino linotype';font-size:17px;"><strong>КРЕДИТНЫЙ ЦЕНТР<br>ДЕМЕЕВСКИЙ</strong></span></div>
      </div>
   </div>
   <div id="indexLayer2" style="position:absolute;text-align:center;left:0px;top:75px;width:100%;height:577px;z-index:114;" title="">
      <div id="indexLayer2_Container" style="width:1000px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
         <div id="wb_indexText5" style="position:absolute;left:128px;top:251px;width:308px;height:56px;z-index:82;text-align:left;">
            <span style="color:#e6e6fa;font-family:'palatino linotype';font-size:21px;">Заполните заявку и получите Ваши деньги через 3-часа</span></div>
         <div id="wb_indexText4" style="position:absolute;left:54px;top:104px;width:435px;height:114px;text-align:center;z-index:83;">
            <span style="color:#e9967a;font-family:'arial black';font-size:27px;">СРОЧНО НУЖНЫ НАЛИЧНЫЕ НА РАЗВИТИЕ<br>БИЗНЕСА?</span></div>
         <div id="wb_indexText19" style="position:absolute;left:788px;top:28px;width:177px;height:28px;z-index:84;text-align:left;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:21px;">от 17,9% годовых</span></div>
         <div id="wb_indexText20" style="position:absolute;left:59px;top:17px;width:425px;height:69px;text-align:center;z-index:85;">
            <span style="color:#ffffff;font-family:'palatino linotype';font-size:17px;">Кредитование и инвестиции в бизнес <br>в Киеве и областях Украины. <br></span></div>
         <div id="wb_indexImage11" style="position:absolute;left:809px;top:85px;width:84px;height:106px;z-index:86;">
            <img src="images/img0001.png" id="indexImage11" alt="" style="width:84px;height:106px;"></div>
         <div id="wb_indexImage3" style="position:absolute;left:179px;top:4px;width:720px;height:572px;z-index:87;">
            <img src="images/deva1.png" id="indexImage3" alt="" style="width:720px;height:572px;"></div>
      </div>
   </div>
   <div id="indexLayer3" style="position:absolute;text-align:center;left:0px;top:4024px;width:100%;height:102px;z-index:115;" title="">
      <div id="indexLayer3_Container" style="width:1001px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
         <div id="wb_indexImage27" style="position:absolute;left:68px;top:8px;width:36px;height:23px;z-index:100;">
            <img src="images/logo.png" id="indexImage27" alt="" style="width:36px;height:23px;"></div>
         <div id="wb_indexText13" style="position:absolute;left:109px;top:7px;width:285px;height:21px;z-index:101;text-align:left;">
            <span style="color:#2e3b50;font-family:'palatino linotype';font-size:15px;"><strong>КРЕДИТНЫЙ ЦЕНТР ДЕМЕЕВСКИЙ</strong></span></div>
         <div id="wb_indexText15" style="position:absolute;left:223px;top:51px;width:133px;height:18px;text-align:center;z-index:102;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">+38 (099) 329-33-14</span></div>
         <div id="wb_indexText42" style="position:absolute;left:397px;top:76px;width:212px;height:20px;text-align:right;z-index:103;">
            <span style="color:#000000;font-family:'trebuchet ms';font-size:15px;">@ 2018. Все права защищены</span></div>
         <div id="wb_indexText45" style="position:absolute;left:103px;top:30px;width:245px;height:18px;text-align:center;z-index:104;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">Киев. Проспект 40-Летия Октября, 17</span></div>
         <div id="wb_indexText14" style="position:absolute;left:109px;top:52px;width:120px;height:36px;text-align:center;z-index:105;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">+38 (067) 444-05-95;</span></div>
         <div id="wb_indexText46" style="position:absolute;left:100px;top:70px;width:226px;height:18px;text-align:center;z-index:106;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">email: boguslav.invest@gmail.com</span></div>
         <div id="wb_indexText44" style="position:absolute;left:654px;top:6px;width:297px;height:36px;text-align:right;z-index:107;">
            <span style="color:#505050;font-family:'palatino linotype';font-size:13px;">Кредитование и инвестирование бизнеса<br>в Киеве и областях Украины.</span></div>
         <div id="wb_indexImage30" style="position:absolute;left:752px;top:55px;width:32px;height:32px;z-index:108;">
            <img src="images/soc2.png" id="indexImage30" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage29" style="position:absolute;left:710px;top:55px;width:32px;height:32px;z-index:109;">
            <img src="images/soc1.png" id="indexImage29" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage31" style="position:absolute;left:794px;top:55px;width:32px;height:32px;z-index:110;">
            <img src="images/soc3.png" id="indexImage31" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage32" style="position:absolute;left:836px;top:56px;width:32px;height:32px;z-index:111;">
            <img src="images/soc4.png" id="indexImage32" alt="" style="width:32px;height:32px;"></div>
         <div id="wb_indexImage34" style="position:absolute;left:878px;top:57px;width:32px;height:32px;z-index:112;">
            <img src="images/soc5.png" id="indexImage34" alt="" style="width:32px;height:32px;"></div>
      </div>
   </div>
   <div id="indexLayer4" style="position:absolute;text-align:center;left:0px;top:4021px;width:100%;height:3px;z-index:116;" title="">
      <div id="indexLayer4_Container" style="width:1002px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
      </div>
   </div>
   <div id="container">
   </div>
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