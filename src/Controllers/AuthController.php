<?php

namespace App\Controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use App\Models\User;

class AuthController extends BaseController
{
    function index($request, $response, $args) {
        return $this->container->view->render($response, 'log-in.twig');
    }

    function login($request, $response, $args) {

        $params = $request->getParams();

        $login = User::where('username', $params['username']);

        return $response->withJson(200, $params);
    }
}
