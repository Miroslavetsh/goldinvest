<?php
    /*
    |--------------------------------------------------------------------------
    | Параметры
    |--------------------------------------------------------------------------
    |
    | wmid - ВАШ id в нашей системе
    | sub - сабаккаунт для разделения трафика
    |
    */
    $config = array(
        'wmid' => 13821,
        'sub' => ''
    );

    if (empty($config['wmid']) || $config['wmid'] == 2)
    {
        echo "<h1 style='text-align: center; margin-top: 60px'>Установите Ваш \"<strong style='color: darkgoldenrod; text-transform: uppercase'>id вебмастера</strong>\". <br/> Это необходимо сделать в корневой директории лэндинга <br/> в фаиле <strong style='color:darkred'>\"config.php\"</strong></h1>";
        die();
    }