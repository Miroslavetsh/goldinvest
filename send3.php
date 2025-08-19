<?php 
$secretKey = '6Ldgbl8rAAAAAGb7Cl02JjvCJIuNqXA-SjsmtkF7';
$token = $_POST['token'];
$remoteIp = $_SERVER['REMOTE_ADDR'];

$url = "https://www.google.com/recaptcha/api/siteverify";
$data = [
    'secret' => $secretKey,
    'response' => $token,
    'remoteip' => $remoteIp
];

$options = [
    'http' => [
        'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
        'method'  => 'POST',
        'content' => http_build_query($data)
    ]
];

$context  = stream_context_create($options);
$response = file_get_contents($url, false, $context);
$responseData = json_decode($response);

if (!$responseData->success || $responseData->score < 0.5) {
    // Капча не пройдена, можно еще проверить action, например $responseData->action === 'submit'
    echo '<h1 style="color:red;">Подтвердите, что вы не робот.</h1>';
    exit;
}

error_reporting(0);
// Скрипт - разработка FineStyle.pro (telegram:@finestyle)
$name = stripslashes(htmlspecialchars($_POST['name']));
$phone = stripslashes(htmlspecialchars($_POST['telephone']));
$email = stripslashes(htmlspecialchars($_POST['email']));
// Сумма
$sum = stripslashes(htmlspecialchars($_POST['sum']));
// Тип залога
$ticket = stripslashes(htmlspecialchars($_POST['ticket']));

$ref = $_SERVER['HTTP_REFERER'];

if(isset($_COOKIE['utm_source'])) {
$utm_source = htmlspecialchars($_COOKIE['utm_source']); 
$utm_medium = htmlspecialchars($_COOKIE['utm_medium']);
$utm_campaign = htmlspecialchars($_COOKIE['utm_campaign']);

$utm = $utm_source.','.$utm_medium.','.$utm_campaign;
// echo $utm;
} 
else { 
    $utm = ' '; 
}

if(empty($phone)){
echo '<h1 style="color:red;">Пожалуйста заполните все поля</h1>';
echo '<meta http-equiv="refresh" content="2; url=http://'.$_SERVER['SERVER_NAME'].'">';
}
else{
$subject = 'Заявка! '; // заголовок письмя
$addressat = "boguslav.invest@gmail.com"; // Ваш Электронный адрес

$message = "Имя: {$name}\nКонтактный телефон: {$phone}\nemail: {$email}\nСумма: {$sum}\nТип залога: {$ticket}\nСтраница: {$ref}\n utm:{$utm}  ";
$verify = mail($addressat,$subject,$message,"Content-type:text/plain;charset=utf-8\r\n");
    
$subject = 'Заявка с сайта goldinvest! ';
$name = $_POST['name'];
$phone = $_POST['telephone'];
$email = $_POST['email'];
$sum = $_POST['sum'];
$ticket = $_POST['ticket'];
$region = $_POST['region'];
$ref = $_SERVER['HTTP_REFERER'];
//$email = $_POST['email'];
$token = "7974932430:AAGL09K2m9M4m7lRRaHmyE3jpKfSFvQovzw";
$chat_id = "-1002620088340";
$arr = array(
  'Тема: ' => $subject,
  'Имя: ' => $name,
  'Контактный телефон: ' => "<a href='tel:+{$phone}'>{$phone}</a>",
  'email: ' => $email,
  'Сумма: ' => $sum,
  'Тип залога: ' => $ticket,
  'Расположение недвижимости: ' => $region,
  'Страница: ' => $ref,
  'utm: ' => $utm,
//  'Email' => $email
);
$txt = '';
foreach($arr as $key => $value) {
  $txt .= "<b>".$key."</b> ".$value."\n"; 
}
$txt = urlencode($txt);
$sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$txt}","r");    
$webhook_url = "https://s1.apix-drive.com/web-hooks/167316/t6cmeqcp";
$webhook_data = [
    'name' => $name,
    'phone' => $phone,
    'email' => $email,
    'sum' => $sum,
    'ticket' => $ticket,
    'Расположение недвижимости:' => $region,
    'utm' => $utm,
    'ref' => $ref
];
$ch_webhook = curl_init($webhook_url);
curl_setopt($ch_webhook, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch_webhook, CURLOPT_POST, true);
curl_setopt($ch_webhook, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
curl_setopt($ch_webhook, CURLOPT_POSTFIELDS, json_encode($webhook_data));
$result = curl_exec($ch_webhook);
curl_close($ch_webhook);    

    
if ($verify == 'true'){

include 'success.php';

}
else 
    {
    echo '<h1 style="color:red;">Произошла ошибка!</h1>';
    }
}


// Скрипты с голд
$ch = curl_init();
 curl_setopt($cURL,CURLOPT_HTTPHEADER,array (
        "Content-Type: text/xml; charset=utf-8"
    ));

// подготовка переменных
$name2 = urlencode($name);

$st = str_replace(',','',$ticket);

$obj = urlencode(trim($st));

// Old form url
//https://docs.google.com/forms/d/e/1FAIpQLSdxUdzNAU_0Oxg9TUtuYCs9-7ucIiitBYzLX1lkExMCDbjnyQ/formResponse
// подготовка переменных
curl_setopt($ch, CURLOPT_URL,"https://docs.google.com/forms/d/e/1FAIpQLSea8Y6z0JX57QE-it2aKUhYl9fZINc7y4bvZmnqrmo2OgfAMQ/formResponse");
curl_setopt($ch, CURLOPT_POST, 1);
// old options
// curl_setopt($ch, CURLOPT_POSTFIELDS, "entry.766289845=$name2&entry.865215342=$phone&entry.347426090=$obj&entry.1887874440=$ploshad&entry.985144027=$city2&entry.1400002762=$sum&entry.340925317=$utm");
curl_setopt($ch, CURLOPT_POSTFIELDS, "entry.15250512=$name2&entry.1968814170=$phone&entry.652185541=$sum&entry.912023461=$ticket");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$server_output = curl_exec($ch);
curl_close ($ch);


        #===> Начало блока отправки СМС

			  
		$client_phone = $_POST['name']; # из формы берем телефон клиента для СМС
		$client_name = $_POST['phone']; # из формы берем Имя клиента для СМС

		$client_zayavka_date = "";
		#$client_zayavka_date = date(" Y-m-d H:i:s"); # Добавим в СМС дату и время заполнения формы. Если не нужно - закоментируйте эту строку, поставив в начале знак #

		# Редактируйте текст СМС по своему усмотрению.
		//$text = htmlspecialchars('З.кредит.  '.$client_name.' тел: '.$client_phone.''.$client_zayavka_date);
        $text = htmlspecialchars('Тел:'.$phone. ' Имя:'.$name.' Сумма:'.$sum. ' Тип:'.$ticket. ' '.$client_zayavka_date );
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
?>
<meta charset="utf-8">
