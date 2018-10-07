<?php

use App\Controllers;

$app->get('/', Controllers\HomeController::class . ':index')->setName('home');
