<?php

use App\Controllers;

$app->get('/', Controllers\HomeController::class . ':index')->setName('home');
$app->get('/chapter-1', Controllers\Chapter1Controller::class . ':index')->setName('chapter-1');
$app->get('/chapter-2', Controllers\Chapter2Controller::class . ':index')->setName('chapter-2');
$app->get('/exercise-1', Controllers\Exercise2Controller::class . ':index')->setName('exercise-1');
$app->get('/exercise-2', Controllers\Exercise1Controller::class . ':index')->setName('exercise-2');
$app->get('/exercise-3', Controllers\Exercise3Controller::class . ':index')->setName('exercise-3');
$app->get('/about-us', Controllers\AboutUsController::class . ':index')->setName('about-us');
$app->get('/contact-us', Controllers\ContactUsController::class . ':index')->setName('contact-us');

$app->get('/log-in', Controllers\LogInController::class . ':index')->setName('log-in');
$app->post('/log-in', Controllers\LogInController::class . ':logIn');

$app->get('/register', Controllers\RegisterController::class . ':index')->setName('register');
$app->post('/register', Controllers\RegisterController::class . ':store');
