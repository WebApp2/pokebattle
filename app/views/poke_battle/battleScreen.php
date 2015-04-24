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
}
.container {
    display: table;
    vertical-align: left;
}
.vertical-center-row {
    display: table-cell;
    vertical-align: left;
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



?>
        
           </div>
           </div>
            </div>
<div class="row vertical-center-row">
        <div class="col-lg-12">
            <div class="row ">
                <div class="col-xs-4 col-xs-offset-5" >
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
       
      <div id="p2healthbar" style="width:250px"></div><p id="p2healthstat"></p>
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

    //Get player's current xp, add victory xp, show in bootstrap modal pop up window
      <?php $userExperience = DB::table('user')->where('id', 0 )->pluck('user_experience');?>
        var xp = "<?php echo $userExperience;?>";
          var newXp = (parseInt(xp) + 10);
            var xpNeeded = 100;
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
     //Take attack damage, subtract from health, update progress bar 
     newhealth2 -= attack;
     //Update health stat number next to progress bar
    $("#p2healthstat").html(newhealth2 + "/" + health2);
      //Update progress bar value
      $( "#p2healthbar" ).progressbar({
          value: parseInt(newhealth2)
          });

          //Modal button, updates experience progress bar on click.
          $('#xpButton').click(function(){
            if(newXp == xpNeeded){

              $.ajax({ url: 'battle',
                  data: {action: 'test'},
                    type: 'get',success: function(output) {
                     
                  }
         
                      });
              <?php if(isset($_REQUEST['action']) && !empty($_POST['action'])) {
                    DB::update('update user set user_level = (user_level + 1) where id = 0'); 
                     DB::update('update user set user_experience = (user_experience + 10) where id = 0');
                  } ?>
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
#p2healthbar{
position:relative;
background-color:red;
width:25%;
}

</style>
<style type='text/css'>
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
 <!--Modal pops up on victory, shows user experience progress -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" style="text-align:center">You Win!</h4>
      </div>
      <div class="modal-body">
        <p><div id="xpBar" style="width:250px"></div><p id="xpPoints"></p>Victory! You gain 10 xp!</p>
      </div>
      <div class="modal-footer">
        <button type="button" id="xpButton" class="btn btn-default">XP</button>
        <button type="button" class="btn btn-primary"  data-dismiss="modal">Go Back</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal pop up for user level up -->
<div class="modal fade" id="lvlModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" style="text-align:center">Level up! You are now level 
          <?php echo DB::table('user')->where('id', 0 )->pluck('user_level');?></h4>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        
        <button type="button" class="btn btn-primary"  data-dismiss="modal">Go Back</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


 
 
</body>
</html>