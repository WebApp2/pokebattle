<?php
function getdata(){
$results1 = DB::select(DB::raw('SELECT i_choose_you,name,color from pokemon'));

//Initialize array
$list = array();

//Sort through DB array create new array
foreach($results1 as $index => $val ){
  foreach($val as $i => $v){
    $list[$index][$i] = $v;   
  } 
}

//Initialize variables
$name = '';
$battled = '';
$color='';


//Open/create file
$file = fopen("jsonData2.php" , "w+");
//Bracket needed for amchart to read data
fwrite($file, "[");

foreach($list as $ind => $key){
	$name = $key['name'];
	$battled = $key['i_choose_you'];
  $color = $key['color'];
	
	
	 $keys = array('Name', 'Battled','color' );
         $line = array($name, $battled, $color);
            $jsonData = array_combine($keys, $line);
               //Write to file in json format
                fwrite($file, json_encode($jsonData).",");
            
}
//Bracket needed for amchart to read data
fwrite($file, "]");
 //close file and save                   
 fclose($file);  
}

?>