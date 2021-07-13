<?php

use application\core\Model;
use application\core\View;
use application\core\Controller;
use application\core\Database;
use application\core\Route;

spl_autoload_register(
    function ($className) {
        $filepath = $className . ".php";

        if (file_exists($filepath)) {
            require $filepath;
        }
    }
);

Database::set('bd', new Database());
Route::start(); // запускаем маршрутизатор