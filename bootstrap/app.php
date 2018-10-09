<?php

$app = new \Slim\App([
    'settings' => [
        'displayErrorDetails' => true,
    ]
]);

$container = $app->getContainer();

$container['view'] = function ($container) {
    $view = new \Slim\Views\Twig(__DIR__ . '/../resources/views', [
        'cache' => false,
    ]);

    $base_path = $container->get('request')->getUri()->getBasePath();
    $base_path = rtrim(str_ireplace('index.php', '', $base_path), '/');
    $view->addExtension(
        new Slim\Views\TwigExtension($container->get('router'), $base_path)
    );

    return $view;
};

$container['errorHandler'] = function ($container) {
    return function ($request, $response, $exception) use ($container) {
        return $container['response']->withStatus(500)
            ->withHeader('Content-Type', 'text/html')
            ->write($exception->getMessage());
    };
};
