<?php

namespace App\Controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class LogInController extends BaseController
{
    function index($request, $response, $args) {
        return $this->container->view->render($response, 'log-in.twig');
    }

    function logIn($request, $response, $args) {

        $params = $request->getParams();

        sd($params);

        return $response->withJson(200, $params);
    }
}
