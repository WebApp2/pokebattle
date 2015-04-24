<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    <link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">  
    <title>PokeBattle! Login</title>  
    <style>

    .btn-custom {
  background-color: hsl(0, 100%, 37%) !important;
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#e50000", endColorstr="#bc0000");
  background-image: -khtml-gradient(linear, left top, left bottom, from(#e50000), to(#bc0000));
  background-image: -moz-linear-gradient(top, #e50000, #bc0000);
  background-image: -ms-linear-gradient(top, #e50000, #bc0000);
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e50000), color-stop(100%, #bc0000));
  background-image: -webkit-linear-gradient(top, #e50000, #bc0000);
  background-image: -o-linear-gradient(top, #e50000, #bc0000);
  background-image: linear-gradient(#e50000, #bc0000);
  border-color: #bc0000 #bc0000 hsl(0, 100%, 35%);
  color: #fff !important;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.13);
  -webkit-font-smoothing: antialiased;
}
table { 
    border-spacing: 15px;
    border-collapse: separate;
}
/* unvisited link */
a:link {
    color: red;
}

/* mouse over link */
a:hover {
    color: white;
    background-color:red;
}
</style>
</head>  
<body>  
<center>
    <div class="container">  
       <center> <img src="assets/loginHeader.jpg">
                        <form role="form" method="post" action="login.php">  
                            <fieldset>  
                                <div class="form-group"  >  
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>  
                                </div>  
                                <div class="form-group">  
                                    <input class="form-control" placeholder="Password" name="pass" type="password" value="">  
                                </div>  
      
      
                                    <input class="btn btn-custom" type="submit" value="Go!" name="login" >  
      
                                <!-- Change this to a button or input when using this as a form -->  
                              <!--  <a href="index.html" class="btn btn-lg btn-success btn-block">Go!</a> -->  
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
      
    include("db_connect.php");  
      
    if(isset($_POST['login']))  
    {  
        $user_email=$_POST['email'];  
        $user_pass=$_POST['pass'];  
      
        $check_user="select * from users WHERE user_email='$user_email'AND user_pass='$user_pass'";  
      
        $run=mysqli_query($dbcon,$check_user);  
      
        if(mysqli_num_rows($run))  
        {  
            echo "<script>window.open('welcome.php','_self')</script>";  
      
            $_SESSION['email']=$user_email;//here session is used and value of $user_email store in $_SESSION.  
      
        }  
        else  
        {  
          echo "<script>alert('Email or password is incorrect!')</script>";  
        }  
    }  
    ?>  