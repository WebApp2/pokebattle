<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    <link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">  
    <title>PokeBattle! Sign Up</title>  
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
    <img src="assets/signupHeader.jpg">
  
<div class="container"><!-- container class is used to centered  the body of the browser with some decent width-->  

            
                    <form role="form" method="post" action="registration.php">  
                        <fieldset>  
                            <div class="form-group">  
                                <input class="form-control" placeholder="Username" name="name" type="text" autofocus>  
                            </div>  
   
                            <div class="form-group">  
                                <input class="form-control" placeholder="Password" name="pass" type="password" value="">  
                            </div>  

<img src="assets/select.jpg"><br>

    <table>
    <tr>
<div class="form-group">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pkmnbattle";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, image_url FROM pokemon";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo '
        <td> <input type="checkbox"> <b>
        ' 
        . $row['name'] .  
        '
        </b> <br/> <img src=" 
        ' 
        . $row['image_url'] . 
        ' 
        " width="100" height="100"></td> 
        ';
    }
    echo '</tr>';
    echo '</table>';
} else {
    echo "0 results";
}
$conn->close();
?> 
</div>
  <br/>
  
                            <input class="btn btn-custom" type="submit" value="Sign Up" name="register" > 


  
                        </fieldset>  
                    </form>  <p>
                    <center><b>Already signed up?</b></b> <a href="/login">Click here to login</a>!</center><!--for centered text-->  
                </div>  
            </div>  
        </div>  
    </div>  <br/>
    <a href="javascript:history.back()"><img src="assets/back.jpg" border="0"></a>


</div>  
  
</body>  
  
</html>  
  
<?php  
  
include("db_connect.php");//make connection here  
if(isset($_POST['register']))  
{  
    $user_name=$_POST['name'];//here getting result from the post array after submitting the form.  
    $user_pass=$_POST['pass'];//same   
  
  
    if($user_name=='')  
    {  
        //javascript use for input checking  
        echo"<script>alert('Please enter the name')</script>";  
exit();//this use if first is not work then other will not show  
    }  
  
    if($user_pass=='')  
    {  
        echo"<script>alert('Please enter the password')</script>";  
exit();  
    }  
  
    if($user_email=='')  
    {  
        echo"<script>alert('Please enter the email')</script>";  
    exit();  
    }  
//here query check weather if user already registered so can't register again.  
    $check_email_query="select * from users WHERE user_email='$user_email'";  
    $run_query=mysqli_query($dbcon,$check_email_query);  
  
    if(mysqli_num_rows($run_query)>0)  
    {  
echo "<script>alert('Email $user_email is already exist in our database, Please try another one!')</script>";  
exit();  
    }  
//insert the user into the database.  
    $insert_user="insert into users (user_name,user_pass,user_email) VALUE ('$user_name','$user_pass','$user_email')";  
    if(mysqli_query($dbcon,$insert_user))  
    {  
        echo"<script>window.open('welcome.php','_self')</script>";  
    }  
  
  
  
}  
  
?>