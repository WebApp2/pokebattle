<?php $user_id = 1; 
$user_level =  DB::table('users')->where('id', $user_id)->pluck('user_level');

//Check user level for Pokemon tier selection
if($user_level >= 3){
$results = DB::select('SELECT name, image_url, pokemon_id from pokemon where pokemon_level = 1 or 
	pokemon_level = 2 or pokemon_level = 3');
}
elseif($user_level = 2){
	$results = DB::select('SELECT name, image_url, pokemon_id from pokemon where pokemon_level = 1 or 
	pokemon_level = 2');

}
else{
$results = DB::select('SELECT name, image_url, pokemon_id from pokemon where pokemon_level = 1');
}

//Initialize variables
$pic = '';
$name = '';
//Initialize array
$list = array();
$ind = 1;
//Sort through DB array create new array
foreach($results as $index => $val ){
  foreach($val as $i => $v){
    $list[$ind][$i] = $v;
  }
  $ind++;
}

?>


 <button class="btn btn-success" name='level' id='select'>Slot 1</button>

<!-- Modal pop up for user level up -->
<div class="modal fade" id="pokemon">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      
        <h4 class="modal-title" style="text-align:center">Select Your Pokemon </h4>
      </div>
      <div class="modal-body">
      	 <form class="form-group" action="battle" >
        <p><?php
print"<ul>";
for($i = 1; $i <= sizeof($list); $i++){

	$pic = $list[$i]['image_url'];
	$id = $list[$i]['pokemon_id'];
	print"<button class='btn' name='select' value='$id'
  style='color:black;font-size:15px;font-weight:bold;background-image:url($pic);background-size:100px 100px;background-repeat:no-repeat;height:100px;width:100px'>";
	print $list[$i]['name'];
	
}




?></p>
      </div>
      <div class="modal-footer">
        
         
         <button class="btn btn-success" name='' background='assets/battlelogo.png' style='height:50px;width:50px'>Slot 1</button>
           <a href="battle" class="btn" name='logout' data-dismiss="modal">Logout</a>
      </form>
       
      
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


</body>
</html>


