<?php
    session_start();

	 require_once('pokestyle.php');
?>


<html>
<head>
	<link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">
	<title>PokeBattle! Login Successful</title> 
</head>
<body><center>
<p><a href="battle"><img src="assets/loginsuccess.jpg" border="0"></a></p>
<?php
if($_SESSION["user_name"]) {
?>
Welcome <?php echo $_SESSION["user_name"]; ?>.</p>
<?php
}
?>
<p><a href="/logout">Click here to logout</a>.</p>
<p><a href="/">Click here to go home</a>.</p>
</center>
</body>
</html>