<?php

use Illuminate\Database\Capsule\Manager as Capsule;

$dotenv = new \Dotenv\Dotenv(__DIR__ . '/../');
$dotenv->overload();

$capsule = new Capsule;
$capsule->addConnection([
    'driver' => getenv('DB.DRIVER'),
    'host' => getenv('DB.HOST'),
    'database' => getenv('DB.DATABASE'),
    'username' => getenv('DB.USERNAME'),
    'password' => getenv('DB.PASSWORD'),
    'charset' => getenv('DB.CHARSET'),
    'collaction' => getenv('DB.COLLATION'),
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();
