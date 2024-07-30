<?php
# обработка данных из формы
# Если поля были незаполнены - вернем на главную страницу. СМС в таком случае не шлется. Сообщений об ошибке пользователю не выдается. Пишите свои обработчики таких событий.
if(!isset($_POST['client_phone']) || empty($_POST['client_phone'])) { Header ('Location: /index.php'); exit; }
if(!isset($_POST['client_name']) || empty($_POST['client_name'])) { Header ('Location: /index.php'); exit; }

$client_phone = $_POST['client_phone']; # из формы берем телефон клиента для СМС
$client_name = $_POST['client_name']; # из формы берем Имя клиента для СМС

$client_zayavka_date = "";
$client_zayavka_date = date(" Y-m-d H:i:s"); # Добавим в СМС дату и время заполнения формы. Если не нужно - закоментируйте эту строку, поставив в начале знак #

# Редактируйте текст СМС по своему усмотрению.
$text = htmlspecialchars('Заявка на з.кредит. Тел.: '.$client_phone.' Клиент: '.$client_name.''.$client_zayavka_date);
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

# перенаправляем на главную страницу. Можете подставить другой адрес перенаправления.
Header ('Location: /index.php'); exit;
?>