<?php

namespace App\Controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Respect\Validation\Validator;
use App\Models\Profile;
use App\Models\User;

class RegisterController extends BaseController
{
    function index($request, $response, $args) {


        return $this->container->view->render($response, 'register.twig');
    }

    function store($request, $response, $args) {

        $params = $request->getParams();

        if (isset($params)) {

            try{
                $this->validateRegister($params);

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

            } catch (ValidationException $exception) {
                return $response->withJson([
                    'error_message' => $exception->getMessages(),
                ], 400);
            }
        }
       
    }

    protected function validateRegister(array $data) {

        $data = array_filter($data);

        $validator = Validator::attribute('username', Validator::stringType())
            ->attribute('password', Validator::stringType())
            ->attribute('firstname', Validator::stringType())
            ->attribute('lastname', Validator::stringType())
            ->attribute('gender', Validator::stringType())
            ->attribute('age', Validator::intVal());

        $validator->assert((object) $data);

    }

    function thankYou($request, $response, $args) {
        return $this->container->view->render($response, 'thank-you.twig');
    }
}
