<?php

namespace App\Controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class Exercise1Controller extends BaseController
{
    function index($request, $response, $args) {
        return $this->container->view->render($response, 'exercise-1.twig');
    }
}
