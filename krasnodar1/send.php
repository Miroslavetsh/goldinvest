<?php
if (isset($_POST['forma'])) {$forma = $_POST['forma'];}
if (isset($_POST['name'])) {$name = $_POST['name'];}
if (isset($_POST['phone'])) {$phone = $_POST['phone'];}
if (isset($_POST['zalog'])) {$zalog = $_POST['zalog'];}
if (isset($_POST['summa'])) {$summa = $_POST['summa'];}

    $to = "boguslav.invest@gmail.com";
    $headers = "Content-type: text/plain; charset = UTF-8";
    $subject = "Заявка с сайта: Kredit";
    $message = "\n Форма: $forma; \n Имя клиента: $name; \n Номер телефона: $phone; \n Вид Залога: $zalog; \n Необходимая сумма: $summa";
    $headers  = 'MIME-Version: 1.0' . "\r\n"; // заголовок соответствует формату плюс символ перевода строки
    $send = mail ($to, $subject, $message, $headers);


/* https://api.telegram.org/botXXXXXXXXXXXXXXXXXXXXXXX/getUpdates */
$forma = $_POST['forma'];
$name = $_POST['name'];
$phone = $_POST['phone'];
$zalog = $_POST['zalog'];
$summa = $_POST['summa'];
//$email = $_POST['email'];
$token = "1703253998:AAHDSzeaNDw-K8VpKRLqdsXNBsXIqcN--9c";
$chat_id = "-545580662";
$arr = array(
  'Форма: ' => $forma,
  'Имя клиента: ' => $name,
  'Номер телефона: ' => $phone,
  'Вид Залога: ' => $zalog,
  'Необходимая сумма: ' => $summa,
//  'Email' => $email
);

foreach($arr as $key => $value) {
  $txt .= "<b>".$key."</b> ".$value."%0A";
};

$sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$txt}","r");

if ($sendToTelegram) {
    exit("<meta http-equiv='refresh' content='0; url=./success.html'>");
} else {
  echo "Error";
}
?>


