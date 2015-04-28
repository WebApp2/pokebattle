<?php
	//Start session
	session_start();
	
	//Require database information
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
	
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the input
	$login = clean($_POST['username']);
	$password = clean($_POST['password']);
	
	$qry="SELECT * FROM users WHERE user_name='$user_name' AND user_pass='$user_pass'";
	$result=mysql_query($qry);
	
	if($result) {
		if(mysql_num_rows($result) == 1) {
			//Login Successful
			session_regenerate_id();
			$member = mysql_fetch_assoc($result);
			$_SESSION['SESS_USERNAME'] = $member['user_name'];
			session_write_close();
			exit();
	}else {
		die("Query failed");
	}
?>