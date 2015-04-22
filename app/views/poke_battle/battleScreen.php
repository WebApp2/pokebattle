<!doctype html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
</head>

        <body background = "/assets/pokebattleBG.png">

          <div class="container">
            <div style ='margin-left:500px'>

<?php

$p1_id = 1;


$results1 = DB::select(DB::raw
  ('SELECT image_url, name, health, attack, pokemon_type from pokemon where pokemon_id = :p1_id'), array(
   'p1_id' => $p1_id,));
$list = array();
foreach($results1 as $index => $val ){
  foreach($val as $i => $v){
    $list['pokemon'][$i] = $v;
  }
}
$pic = '';
$name = '';
$health = '';
$attack = '';
$type = '';
foreach($list as $index => $val){
  $pic = $val['image_url'];
  $name = $val['name'];
  $health = $val['health'];
  $attack = $val['attack'];
  $type = $val['pokemon_type'];
}

$attackName =  DB::table('moves')->where('attack_type_pk', $type)->pluck('attack_name');

       print "<div><img src= $pic style='width:150px;height:150px;position: relative' id='player1pic'/>
        <br/>Name: $name <br/>Health: $health<br/>Attack: $attack<br/><div>";

        //Attack button, used for jquery onclick function
        print"<input type ='submit' id='p1attack' value='$attackName'>";



?>
        
          </div>
        </div>
          <div class="container">
            <div style ='margin-left:250px'>

<?php
//Get random pokemon ID
$p2_id = rand( 1,  9);
$results1 = DB::select(DB::raw
  ('SELECT image_url, name, health, attack, pokemon_type from pokemon where pokemon_id = :p2_id'), array(
   'p2_id' => $p2_id,));
$list = array();
foreach($results1 as $index => $val ){
  foreach($val as $i => $v){
    $list['pokemon'][$i] = $v;
  }
}
$pic2 = '';
$name2 = '';
$health2 = '';
$attack2 = '';
$type2 = '';
foreach($list as $index => $val){
  $pic2 = $val['image_url'];
  $name2 = $val['name'];
  $health2 = $val['health'];
  $attack2 = $val['attack'];
  $type2 = $val['pokemon_type'];
}

$attackName2 =  DB::table('moves')->where('attack_type_pk', $type2)->pluck('attack_name');
        print"<div class = 'container' style='margin-left:250'><img src= '$pic2' style='width:150px;height:150px;position: relative' id='player2pic' /> 
        <br/>Name: $name2 <br/>Health: $health2<br/>Attack: $attack2<br/></div>";
        print"<div id='attackName2'></div>";

        ?>

      </body>

<script>
  $(document).ready(function(){
      //Create variables from the PHP for both players' pokemon
      
       var name = "<?php echo $name; ?>" ;
       var health = "<?php echo $health; ?>" ;
       var attack = "<?php echo $attack; ?>" ;

        var name2 = "<?php echo $name2; ?>" ;
       var health2 = "<?php echo $health2; ?>" ;
       var newHealth1 = health;
       var newhealth2 = health2;

       var attack2 = "<?php echo $attack2; ?>" ;



       //Set player 2 the health stat number on load
       $("#p2healthstat").html(newhealth2 + "/" + health2);
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
       //Checks if player 2's pokemon health is 0 or below, redirects to victory screen
       //php injected to call mysql function that will add user experience point
       if(newhealth2 <= 0){
        alert("You win!");
        window.location.replace("/victory");
        
       }

       
       //alert(name + " did " + attack + " damage to " + name2 +"!");
       //Applies damage to player 2 and updates progress bar value to damaged health.
       newhealth2 -= attack;
       $("#p2healthstat").html(newhealth2 + "/" + health2);
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

<div style ='position:relative;margin-right:50px'id="p1healthbar"></div><p id="p1healthstat"></p>
 
 
</body>
</html>