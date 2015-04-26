<?php
function getdata(){
$results1 = DB::select(DB::raw('SELECT user_name, user_losses, user_wins from users'));

//Initialize array
$list = array();

//Sort through DB array create new array
foreach($results1 as $index => $val ){
  foreach($val as $i => $v){
    $list[$index][$i] = $v;   
  } 
}

//Initialize variables
$wins = '';
$losses = '';
$username = '';
$ratio = '';

//Open/create file
$file = fopen("jsonData.php" , "w+");
//Bracket needed for amchart to read data
fwrite($file, "[");

foreach($list as $ind => $key){
	$wins = $key['user_wins'];
	$losses = $key['user_losses'];
	$username = $key['username'];
	$total = $wins + $losses;
	$ratio = $wins / $total;
	if($wins < $losses){
		//If user has more losses than wins, skip them
		continue;
	}
	else{
	
	 $keys = array('Wins', 'Losses', 'Ratio', 'Username' );
         $line = array($wins, $losses, round($ratio,2), $username);
            $jsonData = array_combine($keys, $line);
               //Write to file in json format
                fwrite($file, json_encode($jsonData).",");
            }
}
//Bracket needed for amchart to read data
fwrite($file, "]");
 //close file and save                   
 fclose($file);  
}

?>