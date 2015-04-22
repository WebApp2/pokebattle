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
	return "This is the host for pokebattle";
});



Route::get('/load', function()
{
	return View::make('poke_battle.pokemonMain');
});
Route::get('/battle', function()
{
	return View::make('poke_battle.test');
});
Route::get('/victory', function()
{
	return View::make('poke_battle.pokemon_victory');
});

Route::get('/game', function()
{
	return View::make('poke_battle.battle_generator');
});



