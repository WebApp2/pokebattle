<!DOCTYPE html>

<?php  

 
$HOME='http://mynbhd.org/Oc/data/';     
$INFILES['jan'] ='012015data.csv';     
$INFILES['feb'] ='022015data.csv';     
$INFILES['march'] ='032015data.csv';     
$INFILES['april'] ='042015data.csv';     
$INFILES['may'] ='052015data.csv';
    
$ALL_DATA = array();
$month = 'jan';
$f = $INFILES[$month];
print"Home = $HOME and file selected = $f";
csv_to_json($HOME, $f);  

function csv_to_json($home, $file){

	
      $FN ="$home/$file";              
       $DATA = @file( $FN );              
      if ( !empty( $DATA) )             
       foreach ( $DATA as $ct => $L ) {                  
            $ALL_DATA[] = $L;

            foreach($ALL_DATA as $index =>$val){
            	
             	$rows = explode(",", trim($val));
             	
    			
        	$keys = array('day:','hour:','temp:','pressure:','hour:');
       		 $csvarr = array_combine($keys, $rows);
   			
   			print"<pre>";
    		print json_encode($csvarr);
    		print"</pre>";

            }               
       }            

}



?>