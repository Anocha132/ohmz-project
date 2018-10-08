<?php

require __DIR__ . '/../vendor/autoload.php';
require __DIR__ . '/../bootstrap/helper.php';
require __DIR__ . '/../bootstrap/app.php';
require __DIR__ . '/../bootstrap/database.php';
require __DIR__ . '/../routers/site.php';

$app->run();
