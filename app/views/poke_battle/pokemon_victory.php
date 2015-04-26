<?php 
$userExperience = DB::table('users')->where('id', 0 )->pluck('user_experience');

print $userExperience;

?>

<!doctype html>
<head>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<style>
         .ui-widget-header {
            background: #cedc98;
            border: 1px solid #DDDDDD;
            color: #333333;
            font-weight: bold;
            height: 100px;
            width:800px;
         }
         </style>
</head>
<body background = "/assets/victory.jpg">
	<div id="xpBar" style="width:auto;height:auto"></div><p id="xpPoints"></p>
	<h1> You are Victorious! Experience increased by 1</h1>
<script>


 $(document).ready(function(){
 	var xp = "<?php echo $userExperience;?>";
 	var newXp = (parseInt(xp) + 10);
 	var xpNeeded = 100;
	$("#xpPoints").html(xp + "/" + newXp);
        $(function() {

       //Sets current and max health of player 2's pokemon for progress bar
       $( "#xpBar" ).progressbar({
       value: parseInt(newXp), max: parseInt(xpNeeded)
      });
      });
});

</script>









	