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
                $this->validation($params);

                $user = new User;

                $user->username = $params['username'];
                $user->password = $params['password'];
        
                $register = new Profile;
        
                $register->firstname = $params['firstname'];
                $register->lastname = $params['lastname'];
                $register->gender = $params['gender'];
                $register->age = $params['age'];
                $register->save();
        
                return $response->withJson(200, $register);

            } catch (Exception $e) {

            }
        }
       
    }

    protected function validation($data) {
        $userValidate = Validator::attribute(isset($data['username']), Validator::stringType())
            ->attribute(isset($data['password']), Validator::stringType())
            ->attribute(isset($data['firstname']), Validator::stringType())
            ->attribute(isset($data['lastname']), Validator::stringType())
            ->attribute(isset($data['gender']), Validator::stringType())
            ->attribute(isset($data['age']), Validator::intVal());
            // ->attribute(isset($data['nickname']), Validator::stringType())
            // ->attribute(isset($data['email']), Validator::stringType())
            // ->attribute(isset($data['phone']), Validator::numeric());

        $userValidate->assert($data);

        sd($userValidate);
    }
}
