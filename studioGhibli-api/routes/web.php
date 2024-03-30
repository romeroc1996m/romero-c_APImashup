<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/movies', 'MovieController@getAll');
$router->get('/movies/{id}', 'MovieController@getOne');
$router->post('/movies/add', 'MovieController@save');
$router->post('/movies/edit/{id}', 'MovieController@update');
$router->delete('/movies/delete/{id}', 'MovieController@delete');
