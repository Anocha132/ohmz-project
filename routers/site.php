<?php

use App\Controllers;

$app->get('/', Controllers\HomeController::class . ':index');
$app->get('/chapter-1', Controllers\Chapter1Controller::class . ':index');
$app->get('/chapter-2', Controllers\Chapter2Controller::class . ':index');
$app->get('/exercise-2', Controllers\Exercise2Controller::class . ':index');
$app->get('/exercise-1', Controllers\Exercise1Controller::class . ':index');
$app->get('/exercise-3', Controllers\Exercise3Controller::class . ':index');
$app->get('/about-us', Controllers\AboutUsController::class . ':index');
$app->get('/contact-us', Controllers\ContactUsController::class . ':index');

$app->get('/log-in', Controllers\LogInController::class . ':index')->setName('log-in');

$app->get('/register', Controllers\RegisterController::class . ':index')->setName('register');