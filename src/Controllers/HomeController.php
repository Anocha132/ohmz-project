<?php

namespace App\Controllers;

use App\Models\Product;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class HomeController extends BaseController
{
    function index($request, $response, $args) {
        return $this->container->view->render($response, 'home.twig');
    }
}
