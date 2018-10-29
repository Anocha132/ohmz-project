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

        $register = new Register;

        $register->username = $params['username'];
        $register->password = $params['password'];
        $register->firstname = $params['firstname'];
        $register->lastname = $params['lastname'];
        $register->gender = $params['gender'];
        $register->age = $params['age'];

        return $response->withJson(200, $params);
    }
}
