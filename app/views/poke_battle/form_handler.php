<?php

if(isset($_REQUEST['lost'])) {

   DB::update('update user set user_losses = (user_losses + 1) where id = 0'); 
    header( 'Location:battle');
    exit();
 	
}
 else if(isset($_REQUEST['win'])) {
   DB::update('update user set user_wins = (user_wins + 1) where id = 0');
    DB::update('update user set user_experience = (user_experience + 10) where id = 0'); 
   header( 'Location:battle');
    exit();
}
 else if(isset($_REQUEST['level'])) {
 	 DB::update('update user set user_experience = (user_experience + 10) where id = 0');
   DB::update('update user set user_level = (user_level + 1) where id = 0'); 
   header( 'Location:battle');
    exit();
}


?>