<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    <link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">  
    <title>PokeBattle! Login</title>  
    <?php 
    require_once('pokestyle.php'); ?>
</head>  
<body>  
<center>
    <div class="container">  
       <center> <img src="assets/loginHeader.jpg">
                        <form role="form" method="post" action="loginsuccess">  
                            <fieldset>  
                                <div class="form-group"  >  
                                    <input class="form-control" placeholder="Username" name="user_name" id="user_name" autofocus>  
                                </div>  
                                <div class="form-group">  
                                    <input class="form-control" placeholder="Password" name="user_pass" type="user_pass" value="">  
                                </div>  
      
      
                                    <input class="btn btn-custom" type="submit" value="Go!" name="login" >  
                            </fieldset>  
                        </form>  
                         <p>
                    <center><b>Don't have an account?</b></b> <a href="/signup">Click here to sign up</a>!</center><!--for centered text--> 
                    </div>  
                </div>  
            </div>  
            <br/><center>
    <a href="javascript:history.back()"><img src="assets/back.jpg" border="0"></a>
        </div> 
    </div>  
      
      
    </body>  
      
    </html> 

  <?php
  if(isset($_POST['login']))  
{ 
    
session_start();
$message="";
if(count($_POST)>0) {
$conn = mysql_connect("localhost","root","");
mysql_select_db("pkmnbattle",$conn);
$result = mysql_query("SELECT * FROM users WHERE user_name='" . $_POST["user_name"] . "' and user_pass = '". $_POST["user_pass"]."'");
$row  = mysql_fetch_array($result);

if(is_array($row)) {
$_SESSION["user_name"] = $row[user_name];
} else {
$message = "Invalid Username or Password!";
}
}

if(isset($_SESSION["user_name"])) {
header("Location:login-exec.php");
}
}
?>