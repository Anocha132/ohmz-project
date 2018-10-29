<?php

use App\Controllers;

$app->get('/', Controllers\HomeController::class . ':index')->setName('home');
$app->get('/chapter-{id}', Controllers\ChapterController::class . ':index');
$app->get('/about-us', Controllers\AboutUsController::class . ':index')->setName('about-us');
$app->get('/contact-us', Controllers\ContactUsController::class . ':index')->setName('contact-us');



$app->group('/log-in', function() {
    $this->get('', Controllers\LogInController::class . ':index')->setName('log-in');
    $this->post('', Controllers\LogInController::class . ':logIn');
});

$app->group('/register', function() {
    $this->get('', Controllers\RegisterController::class . ':index')->setName('register');
    $this->post('', Controllers\RegisterController::class . ':store');
    $this->get('/thank-you', Controllers\RegisterController::class . ':thankYou')->setName('thank-you');
});

$app->group('', function() {
    $this->group('', function() {
        $this->get('/exercise-{id}', Controllers\ExerciseController::class . ':index');
    });
});



