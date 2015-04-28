<?php
	//Start session
	session_start();
	
	//Unset the variables stored in session
	unset($_SESSION['SESS_USERNAME']);

	require_once('pokestyle.php');
?>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css">
	<title>PokeBattle! Logout</title> 
	<link rel="stylesheet" type="text/css" href="pokestyle.css" />
</head>
<body>
<p align="center"><img src="assets/logout.jpg"></p>
<h4 align="center">You have been logged out.</h4>
<p align="center"><a href="/login">Click here to log back in</a>.</p>
</body>
</html>
