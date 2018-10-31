<?php

namespace App\Controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Respect\Validation\Validator;
use Respect\Validation\Exceptions\NestedValidationException;
use App\Models\Profile;
use App\Models\User;

class RegisterController extends BaseController
{
    function index($request, $response, $args) {


        return $this->container->view->render($response, 'register.twig');
    }

    function store($request, $response, $args) {

        $params = $request->getParams();
        $user = User::active()->whereUsername($params['username'])->first();

        if ($params['username'] == $user['username']) {
            return $response->withJson('username is duplicate', 401);
        }

        $validator = Validator::attribute('username', Validator::stringType()->notEmpty())
        ->attribute('password', Validator::stringType()->notEmpty())
        ->attribute('firstname', Validator::stringType()->notEmpty())
        ->attribute('lastname', Validator::stringType()->notEmpty())
        ->attribute('gender', Validator::stringType()->notEmpty())
        ->attribute('age', Validator::intVal()->notEmpty());

        try {
            $validator->assert((object)$params);
        } catch(NestedValidationException $e) {
            return $response->withJson(['message' => $e->getMessages()], 400);
        }

        $user = new User;

        $user->username = $params['username'];
        $user->password = $params['password'];

        $user->save();

        $register = new Profile;

        $register->firstname = $params['firstname'];
        $register->lastname = $params['lastname'];
        $register->gender = $params['gender'];
        $register->age = $params['age'];

        $register->save();

        return $response->withRedirect('/thank-you', 201);

    }

    protected function validateRegister(array $data) {

        $data = array_filter($data);

        $validator = Validator::attribute('username', Validator::stringType()->notEmpty())
            ->attribute('password', Validator::stringType()->notEmpty())
            ->attribute('firstname', Validator::stringType()->notEmpty())
            ->attribute('lastname', Validator::stringType()->notEmpty())
            ->attribute('gender', Validator::stringType()->notEmpty())
            ->attribute('age', Validator::intVal()->notEmpty());

    }

    function thankYou($request, $response, $args) {
        return $this->container->view->render($response, 'thank-you.twig');
    }
}
