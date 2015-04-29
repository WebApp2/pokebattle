<?php
File::requireOnce('C:\xampp\htdocs\newlaravel\pokebattle\app\views\poke_battle\form_handler.php');
?>
<!doctype html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style>
body{
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
              <a class="navbar-brand" ></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                 <li><img src='assets/battlelogo.png' style='height:50px;width:50px'></li>
               
               <li><a href="logout">Logout</a></li>
               <li><a href="players">Top Players</a></li>
                <li><a href="pokemon">Top Pokemon</a></li>
                 <li><a href="add">Add a Pokemon</a></li>
                 <li><a href="#"<button  id='switch'>Switch Pokemon</button></a></li>
                <li  class="active"><a href="battle">Battle!</a></li>
               
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
<script>
 $(document).ready(function(){
  $("#add").modal('show');

 });


  </script>
  </header>
  
        <body background = "/assets/pokebattleBG.png">
<!--Modal pops up on victory, shows user experience progress -->
<div class="modal fade" id="add">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" style="text-align:center">Add a Pokemon</h4>
      </div>
      <div class="modal-body" id='winModal'>
         <form class="form-group" action="form" >
        <p><p id="xpPoints"></p>Name:<input type = 'text' name='pname'></br>Image URL:<input type = 'text' name='purl'>
      </br>Graph Color:<input type = 'text' name='pcolor'></br>Type:<input type = 'text' name='ptype'></p>
        <button class="btn btn-success" type="button" id="added" name="addPokemon" class="btn btn-default">Done</button>
        </form>
      </div>
      <div class="modal-footer">
       
          
           <a href="battle" class="btn" name="logout" data-dismiss="modal">Logout</a>
      
      
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!--