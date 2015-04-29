<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/




/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('poke_battle.index');
});



Route::get('/load', function()
{
	return View::make('poke_battle.pokemonMain');
});
Route::get('/signup', function()
{
	return View::make('poke_battle.signup');
});
Route::get('/battle', function()
{
	return View::make('poke_battle.battleScreen');
});
Route::get('/victory', function()
{
	return View::make('poke_battle.pokemon_victory');
});

Route::get('/game', function()
{
	return View::make('poke_battle.battle_generator');
});
Route::get('/test', function()
{
	return View::make('poke_battle.battleScreen.blade');
});
Route::get('/login', function()
{
	return View::make('poke_battle.login');
});
Route::get('/form', function()
{
	return View::make('poke_battle.form_handler');
});
Route::get('/players', function()
{
	return View::make('poke_battle.top_player_chart');
});
Route::get('/pokemon', function()
{
	return View::make('poke_battle.top_pokemon_chart');
});
Route::get('/home', function()
{
	return View::make('poke_battle.home');
});
Route::get('/logout', function()
{
	return View::make('poke_battle.logout');
});
Route::get('/select', function()
{
	return View::make('poke_battle.pokemon_select');
});
Route::get('/success', function()
{
	return View::make('poke_battle.regsuccess');
});
Route::get('/add', function()
{
	return View::make('poke_battle.add');
});
Route::get('/loginsuccess', function()
{
	return View::make('poke_battle.login-exec');
});
Route::post('success', function()
{
    DB::table('users')->insert(
        array("user_name" => Input::get('user_name'),
              "user_pass" => Input::get("user_pass"),
              "user_email" => Input::get("email")
        )
    );
    return Redirect::to('success');
});
Route::post('loginsuccess', function()
{
    DB::table('users')->select(
        array("user_name" => Input::get('user_name'),
              "user_pass" => Input::get("user_pass")
        )
    );
    return Redirect::to('loginsuccess');
});