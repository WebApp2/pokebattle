<?php
class WeatherController extends BaseController{


public function data()
{
	$name = 'Rob Nice';
	return View::make('pages.weather',compact('name'));
}

public function getData(){
	//$input = $_REQUEST['radioMonth'];
	return View::make('data_upload');
	
}

}
?>