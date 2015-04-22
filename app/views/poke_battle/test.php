<?php
$results1 = DB::select(DB::raw
  ('SELECT image_url, name, health, attack, pokemon_type from pokemon where pokemon_id = 1'));
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

?>