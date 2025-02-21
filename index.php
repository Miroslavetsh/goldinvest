<?php
// Получаем User-Agent из заголовков запроса
$userAgent = $_SERVER['HTTP_USER_AGENT'];

// Путь к файлам
$pageSpeedFilePath = '/home/gold/public_html/1.html';
$defaultFilePath = '/home/gold/public_html/index.html';

// Проверяем, если User-Agent это Googlebot (или другой поисковый робот)
if (strpos($userAgent, 'Googlebot') !== false) {
    // Проверяем, существует ли файл для PageSpeed
    if (file_exists($pageSpeedFilePath)) {
        // Читаем содержимое файла
        $content = file_get_contents($pageSpeedFilePath);

        // Отправляем заголовки и содержимое
        header('Content-Type: text/html; charset=' . mb_detect_encoding($content, 'UTF-8, ISO-8859-1', true));
        echo $content;
        exit;
    } else {
        // Если файл не найден, показываем ошибку 404
        header("HTTP/1.0 404 Not Found");
        echo "404 Not Found";
        exit;
    }
}

// Если это не Googlebot, отдаем стандартный HTML
// Проверяем, существует ли основной файл
if (file_exists($defaultFilePath)) {
    // Читаем содержимое файла
    $content = file_get_contents($defaultFilePath);

    // Отправляем заголовки и содержимое
    header('Content-Type: text/html; charset=' . mb_detect_encoding($content, 'UTF-8, ISO-8859-1', true));
    echo $content;
} else {
    // Если основной файл не найден, показываем ошибку 404
    header("HTTP/1.0 404 Not Found");
    echo "404 Not Found";
}
?>
