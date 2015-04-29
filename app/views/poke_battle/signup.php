<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    <link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">  
    <title>PokeBattle! Sign Up</title>  
</head>  
<body>  
<center>
    <img src="assets/signupHeader.jpg">
  
<div class="container"><!-- container class is used to centered  the body of the browser with some decent width-->  

            
                    <form method="post" action="success">  
                        <fieldset>  
                            <div class="form-group">  
                                <input class="form-control" placeholder="Username" name="user_name" id="user_name"  type="text" autofocus>  
                            </div>  
   
                            <div class="form-group">  
                                <input class="form-control" placeholder="Password" name="user_pass" id="user_pass" type="password" value="">  
                            </div>  

                            <div class="form-group">  
                                <input class="form-control" placeholder="E-mail Address" name="email" id="email" type="email" value="">  
                            </div>  

<img src="assets/starter.jpg"><br>
(Selection Available During Battle)<br>

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

$sql = "SELECT name, pokemon_id, image_url FROM pokemon where pokemon_level = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo '
        <td><b><center>
        ' 
        . $row['name'] .  
        '
        </b> <br/> <img src=" 
        ' 
        . $row['image_url'] . 
        ' 
        " width="100" height="100"></center></td> 
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
  require_once('pokestyle.php');
include("db_connect.php");//make connection here  
if(isset($_POST['register']))  
{  
    $user_name=$_POST['name'];//here getting result from the post array after submitting the form.  
    $user_pass=$_POST['pass'];//same   
    $email=$_POST['email'];//same  

    mysql_query("INSERT INTO users(user_name, user_pass, user_email) VALUES ( '" . $_POST['user_name'] . "', '" . $_POST['user_pass'] . "', '" . $_POST['email']  . "')");
    $current_id = mysql_insert_id(); 
  
  
    if($user_name=='')  
    {  
        //javascript use for input checking  
        echo"<script>alert('Please enter a username')</script>";  
exit();//this use if first is not work then other will not show  
    }  
  
    if($user_pass=='')  
    {  
        echo"<script>alert('Please enter a password')</script>";  
exit();  
    }  
  
    if($email=='')  
    {  
        echo"<script>alert('Please enter an email address')</script>";  
    exit();  
    }  

    $check_email_query="select * from users WHERE user_email='$email'";  
    $run_query=mysqli_query($dbcon,$check_email_query);  
  
    if(mysqli_num_rows($run_query)>0)  
    {  
echo "<script>alert('Email $email already exists in our database, please try another one!')</script>";  
exit();  
    }  

header("location: regsuccess.php"); 
  
}
  
?>