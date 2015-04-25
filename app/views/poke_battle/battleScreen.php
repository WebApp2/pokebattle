<!doctype html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style>
html, body, .container {
    height: 100%;
    font-weight:bold;
    font-size:15px;
    color:black;
}
.container {
    display: table;
    vertical-align: left;
}
.vertical-center-row {
    display: table-cell;
    vertical-align: left;
}
.progress{
  width:200px;
}
</style>
</head>
<header>
   <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Poke-Battle!</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

  </header>

        <body background = "/assets/pokebattleBG.png">

          <div class="container">
    <div class="row vertical-center-row">
        <div class="col-lg-12">
            <div class="row ">
                <div class="col-xs-4 col-xs-offset-2" >

<?php
//Hard coded player one pokemon selection
$p1_id = 1;


$results1 = DB::select(DB::raw('SELECT image_url, name, health, attack, pokemon_type from pokemon where pokemon_id = :p1_id'), array(
   'p1_id' => $p1_id,));
//Initialize variable
$list = array();
//Make new array from DB query
foreach($results1 as $index => $val ){
  foreach($val as $i => $v){
    $list['pokemon'][$i] = $v;
  }
}
//Initialize variables
$pic = '';
$name = '';
$health = '';
$attack = '';
$type = '';
//Sort through new array
foreach($list as $index => $val){
  $pic = $val['image_url'];
  $name = $val['name'];
  $health = $val['health'];
  $attack = $val['attack'];
  $type = $val['pokemon_type'];
}
//Get attack name, from different table
$attackName =  DB::table('moves')->where('attack_type_pk', $type)->pluck('attack_name');

print "<div><img src= $pic style='width:150px;height:150px;position: relative' id='player1pic'/>
        <br/>Name: $name <br/>Health: $health<br/>Attack: $attack<br/><div>";

//Attack button, used for jquery onclick function
print"<input type ='submit' id='p1attack' value='$attackName'>";
//Keep the continue button hidden until the p1attack function is run
print"<input type ='submit' id='continue' value='Continue' style='display:none'>";


//<div id="p1healthbar" style="width:250px"></div><p id="p1healthstat"></p>
?>
<div class="progress">
  <div id="p1healthbar" class="progress-bar" role="progressbar" aria-valuenow="newHealth" aria-valuemin="0" aria-valuemax="health" style="width: 100%;">
  </div>
</div>

        
           </div>
           </div>
            </div>
<div class="row vertical-center-row">
        <div class="col-lg-12">
            <div class="row ">
                <div class="col-xs-4 col-xs-offset-3" >
<?php
//Get random pokemon ID
$p2_id = rand( 1,  9);

$results1 = DB::select(DB::raw('SELECT image_url, name, health, attack, pokemon_type from pokemon where pokemon_id = :p2_id'), array(
   'p2_id' => $p2_id,));

//Initialize array
$list = array();
//Sort through DB array create new array
foreach($results1 as $index => $val ){
  foreach($val as $i => $v){
    $list['pokemon'][$i] = $v;
  }
}
//Initialize variables
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
        print"<div style='margin-left:250'><img src= '$pic2' style='width:150px;height:150px;position: relative' id='player2pic' /> 
        <br/>Name: $name2 <br/>Health: $health2<br/>Attack: $attack2<br/></div>";
        print"<div id='attackName2'></div>";

        ?>
       
      <div class="progress">
  <div id="p2healthbar" class="progress-bar" role="progressbar" aria-valuenow="newhealth2" aria-valuemin="0" aria-valuemax="health2" style="width: 100%;">
  </div>
</div>

           </div>
           </div>
            </div>
   
  </div>

      </body>

<script>
  $(document).ready(function(){
      //Create variables from the PHP for both players' pokemon
      
var name = "<?php echo $name; ?>" ;
var health = "<?php echo $health; ?>" ;
var attack = "<?php echo $attack; ?>" ;
var name2 = "<?php echo $name2; ?>" ;
var health2 = "<?php echo $health2; ?>" ;
var newHealth = health;
var newhealth2 = health2;
var attack2 = "<?php echo $attack2; ?>" ;
//Set player 1 and 2 the health stat number on load
 $("#p2healthbar").html(newhealth2 + "/" + health2);
 $('#p1healthbar').html(newHealth + "/" + health);
       
   
   //Continue button for "AI" pokemon to attack
      $('#continue').click(function(){

        $( "#player2pic" ).animate({
          right: "50px"
           }, 750, function() {
          $(this).css({'right':'0'});   
          });

         newHealth -= attack2;
         $('#p1healthbar').html(newHealth + "/" + health);
          $('#p1healthbar').css('width', parseInt(newHealth)+'%').attr('aria-valuenow', parseInt(newHealth));
       if(newHealth <= 0 ){
         $('#lostModal').modal('show');
         <?php 
                     
                  ?>
       }
          //Append text to div panel
    $('#battleLog').append("</br>"+name2 + " did " + attack2 + " damage to " + name +"!");
        //Hide the continue button, show the attack button for player
        $('#continue').hide();
        $('#p1attack').show().delay(1000).fadeIn(400);
      });
     
  $('#p1attack').click(function(){//PLayer 1 attack button function
    
    //Hide the attack button to prevent button spamming, show the continue button
      $('#continue').show().delay(1000).fadeIn(1000);
      $('#p1attack').hide();
    //Moves the player 1 picutre right 50px then resets
    $( "#player1pic" ).animate({
      left: "50px"
       }, 750, function() {
          $(this).css({'left':'0'});   
      });

    //Take attack damage, subtract from health, update progress bar 
     newhealth2 -= attack;
     //Update health stat number next to progress bar
    $("#p2healthbar").html(newhealth2 + "/" + health2);
      //Update progress bar value
     $('#p2healthbar').css('width', parseInt(newhealth2)+'%').attr('aria-valuenow', parseInt(newhealth2));
       //Append text to div panel
    $('#battleLog').append("</br>"+name + " did " + attack + " damage to " + name2 +"!");
       
       //Checks if player 2's pokemon health is 0 or below, redirects to victory screen
       //php injected to call mysql function that will add user experience point
if(newhealth2 <= 0){

    //Get player's current xp, add victory xp, show in bootstrap modal pop up window
      <?php $userExperience = DB::table('user')->where('id', 0 )->pluck('user_experience');?>
       <?php $userlevel = DB::table('user')->where('id', 0 )->pluck('user_level');?>
        var xp = "<?php echo $userExperience;?>";
        var userLevel = "<?php echo $userlevel;?>";
          var newXp = (parseInt(xp) + 10);
            var xpNeeded = (parseInt(userLevel) * 100 );
$("#xpPoints").html(xp + "/" + xpNeeded);
        
    $(function() {
    //Sets current and max health of player 2's pokemon for progress bar
        $( "#xpBar" ).progressbar({
           value: parseInt(xp), max: parseInt(xpNeeded)
          });
    });
        
      //show modal with data from above
     $('#myModal').modal('show');
     //end of If statement
     }
      else if(newHealth <= 0 ){
         $('#lostModal').modal('show');
       }
     

          //Modal button, updates experience progress bar on click.
          $('#xpButton').click(function(){
            $('#xpButton').hide();
            $('#done').show();
            if(newXp == xpNeeded){

              $.ajax({ url: 'battle',
                  data: {action: 'test'},
                    type: 'get',success: function(output) {
                     
                  }
         
                      });
             
              //Increase user's level by 1
               
              $('#myModal').modal('hide');
              $('#lvlModal').modal('show');
            }
            //Update user's xp by 10 points
            <?php ?>
            $("#xpPoints").html(newXp + "/" + xpNeeded);
             $( "#xpBar" ).progressbar({
              value: newXp, max: parseInt(xpNeeded)
              });
          });


});

  });


</script>
  
  <script>
 
  </script>
<style>


#battleLog{
 background-color:grey;
 border-radius:5px;
 color:white;
}
</style>
<style type='text/css'>
#winModal {
    background: url('assets/victory.jpg') !important;
   background-size: cover;
  }
ui-widget-header {
            background: #cedc98;
            border: 1px solid #DDDDDD;
            color: #333333;
            font-weight: bold;
            
         }
   .ui-progressbar-value {
  transition: width 1s;
  -webkit-transition: width 1s;
}
</style>
</head>
<body>
  <div class="panel panel-default">
  <div class="panel-body" id="battleLog">
    Battle Log:
   
  </div>
</div>

 <!--Modal pops up on victory, shows user experience progress -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" style="text-align:center">You Win!</h4>
      </div>
      <div class="modal-body" id='winModal'>
        <p><div id="xpBar" style="width:250px"></div><p id="xpPoints"></p>Victory! You gain 10 xp!</p>
      </div>
      <div class="modal-footer">
        <form class="form-group" action="form" >
          <button type="button" id="xpButton" name="win" class="btn btn-default">Get XP!</button>
         <button class="btn btn-success" name='win' id="done" style="display:none">Play Again</button>
           <a href="battle" class="btn" data-dismiss="modal">Logout</a>
      </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!--

<!-- Modal pop up for user level up -->
<div class="modal fade" id="lvlModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      
        <h4 class="modal-title" style="text-align:center">Level up! You are now level 
          <?php $level = DB::table('user')->where('id', 0 )->pluck('user_level') + 1; echo $level ?> </h4>
      </div>
      <div class="modal-body">
        <p><img src="assets/level.jpg"</p>
      </div>
      <div class="modal-footer">
         <form class="form-group" action="form" >
         
         <button class="btn btn-success" name='level' >Play Again</button>
           <a href="battle" class="btn" name='level' data-dismiss="modal">Logout</a>
      </form>
       
      
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--Modal pops up on victory, shows user experience progress -->
<div class="modal fade" id="lostModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" style="text-align:center">You Lost!</h4>
      </div>
      <div class="modal-body">
        <p><img src="assets/lost.png" style="width:150px;height:150px">You were defeated!</p>
      </div>
      <div class="modal-footer">
        <form class="form-group" action="form" >
         <button class="btn btn-success" name='lost' id="submit">Play Again</button>
           <a href="battle" class="btn" data-dismiss="modal">Logout</a>
      </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
 
 
</body>
</html>