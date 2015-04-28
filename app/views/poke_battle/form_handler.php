<?php

if(isset($_REQUEST['lost'])) {

   DB::update('update users set user_losses = (user_losses + 1) where id = 1'); 
   
 	
}
 else if(isset($_REQUEST['win'])) {
   DB::update('update users set user_wins = (user_wins + 1) where id = 1');
    DB::update('update users set user_experience = (user_experience + 10) where id = 1'); 
  
}
 else if(isset($_REQUEST['level'])) {
 	 DB::update('update users set user_experience = (user_experience + 10) where id = 1');
   DB::update('update users set user_level = (user_level + 1) where id = 1'); 
  
}
else if(isset($_REQUEST['select'])) {
  //Get pokemon ID from the select modal
   $id = $_REQUEST['select'];
   //Update database where pokemon ID is the pokemon chosen
    DB::update(DB::raw('UPDATE pokemon set i_choose_you = (i_choose_you + 1) where pokemon_id = :pk_id'), array(
   'pk_id' => $id));
    
}
else if(isset($_REQUEST['logout'])) {
   //Handle the user logout request
    exit();
}


?>