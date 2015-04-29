<?php
	//Start session
	session_start();

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
	
	//Function to sanitize values received from the form
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize form values
	$email = clean($_POST['email']);
	$user_name = clean($_POST['user_name']);
	$password = clean($_POST['user_pass']);
	
	//Check for duplicate login ID
	if($user_name != '') {
		$qry = "SELECT * FROM users WHERE user_name='$user_name'";
		$result = mysql_query($qry);
		if($result) {
			if(mysql_num_rows($result) > 0) {
				exit();
			}
		}
		else {
			die("Query failed");
		}
	}
}
	//Create INSERT query
	$qry = "INSERT INTO users(user_name, user_pass, user_email) VALUES('$user_name','$user_pass','$email','".md5($_POST['user_pass'])."')";
	$result = @mysql_query($qry);

?>

<html>
<head>
	<link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">
	<title>PokeBattle! Registration Successful</title> 
</head>
<body><center>
<p><img src="assets/success.jpg"></p>
<h4>You have been logged out.</h4>
<p><a href="/login">Click here to login</a>.</p>
<p><a href="/">Click here to go home</a>.</p>
</center>
</body>
</html>