<?php

namespace App\Controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class RegisterController extends BaseController
{
    function index($request, $response, $args) {


        return $this->container->view->render($response, 'register.twig');
    }

    function store($request, $response, $args) {

        $params = $request->getParams();

        return $response->withJson(200, $params);
    }
}
