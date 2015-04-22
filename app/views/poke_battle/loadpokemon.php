<!doctype html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
</head>


<?php

//if(isset($_REQUEST['pokemon'])){
   // $pokemon_id = $_REQUEST['pokemon'];
   // connect_db();
//}
 //function connect_db(){
  
/*
    $pokemon_id = 1;
    $server = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'pkmngame';

$connect = new mysqli($server, $user,$pass,$db)
      or die ("Cannot connect to $server. Error: " . mysql_error());
      //$name = DB::table('pokemon_images')->where('img_id', 1)->pluck('img_name');

      //Get the image, name of the pokemon, health, and attack stats from the database;
      $query = "SELECT image_url,attack, name, health FROM pokemon where pokemon_id = 1";
      $result = $connect->query($query);

      if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $pic = $row["image_url"];
        $health= $row["health"];
        $attack= $row["attack"];
        $name = $row["name"];
        //Displays pokemon image and the stats
*/
$results = DB::select('SELECT image_url,attack, name, health FROM pokemon where pokemon_id = 1', array(1));

print_r($results);
        print"<div><img src= '$pic' style='width:150px;height:150px;position: relative' id='player1pic'/> <br/>Name: $name <br/>Health: $health<br/>Attack: $attack<br/><div>";

        //Attack button, used for jquery onclick function
        print"<input type ='submit' id='p1attack' value='Attack!'>";
       
         
         


    }
} else {
    echo "0 results";
}

 ?>

 <?php
 $connect = new mysqli($server, $user,$pass,$db)
      or die ("Cannot connect to $server. Error: " . mysql_error());
      //$name = DB::table('pokemon_images')->where('img_id', 1)->pluck('img_name');

      $query = "select image_name, attack, name, health from pokemon, pokemon_images where pokemon_id = 2 && image_id = 2 ";
      $result = $connect->query($query);

      if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $pic2 = $row["image_name"];
        $health2= $row["health"];
        $attack2= $row["attack"];
        $name2 = $row["name"];
        print"<div style='margin-left:250'><img src= '$pic2' style='width:150px;height:150px' /> 
        <br/>Name: $name2 <br/>Health: $health2<br/>Attack: $attack2<br/></div>";

        
       

    }
} else {
    echo "0 results";
}    



?>
<script>
  $(document).ready(function(){
      //Create variables from the PHP for both players' pokemon
       var name = "<?php echo $name; ?>" ;
       var health = "<?php echo $health; ?>" ;
       var attack = "<?php echo $attack; ?>" ;

        var name2 = "<?php echo $name2; ?>" ;
       var health2 = "<?php echo $health2; ?>" ;
       var newhealth2 = health2;
       var attack2 = "<?php echo $attack2; ?>" ;
       //Set the health stat number on load
       $("#p2healthstat").html(newhealth2);
        $(function() {
       
       //Sets current and max health of player 2's pokemon for progress bar
       $( "#p2healthbar" ).progressbar({
       value: parseInt(newhealth2), max: parseInt(health2)
      });
      });
      
    $('#p1attack').click(function(){//PLayer 1 attack button function
        //Moves the player 1 picutre right 50px then resets
        $( "#player1pic" ).animate({
           left: "50px"
           
           }, 500, function() {
           $(this).css({'left':'0'});   

         });
       
       
       
       //alert(name + " did " + attack + " damage to " + name2 +"!");
       //Applies damage to player 2 and updates progress bar value to damaged health.
       newhealth2 -= attack;
       $("#p2healthstat").html(newhealth2);
       $( "#p2healthbar" ).progressbar({
       value: parseInt(newhealth2)
      });
    });
  });


</script>
  
  <script>
 
  </script>
<style>
#p2healthbar{
position:relative;
background-color:red;
width:25%;
}

</style>
<style type='text/css'>
    .ui-widget-header {
        background-image: none !important;
        background-color: #FF0000 !important; 
    }
</style>
</head>
<body>
 
<div id="p2healthbar"></div><p id="p2healthstat"></p>
 
 
</body>
</html>