<?php
	//Start session
	session_start();
	
	//Include connection info
	require_once('config.php');
	
	//Connect to mysql server
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if(!$link) {
		die("Failed to connect to server");
	}
	
	//Select database
	$db = mysql_select_db(DB_DATABASE);
	if(!$db) {
		die("Unable to select database");
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
		else {
			die("Query failed");
		}
	}

	//Create INSERT query
	$qry = "INSERT INTO users(user_name, user_pass, user_email) VALUES('$user_name','$user_pass','$email','".md5($_POST['user_pass'])."')";
	$result = @mysql_query($qry);
	
	//Check whether the query was successful or not
	if($result) {
		header("location: success");
		exit();
	}else {
		die("Query failed");
	}
?>