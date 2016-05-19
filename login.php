<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include('db.php');
session_start();
	
	if (empty($_POST['username']) || empty($_POST['password'])) {
		$error = "Username or Password is empty";
	}
	else {
		$users = ['username','password'];

		foreach ($users as $key) {
		$_POST[$key] = trim($_POST[$key]);
		}

		$sql = "SELECT * FROM users WHERE username =  '" . $_POST['username'] . "' AND password =  '" . $_POST['password'] . "' ";
		$result = mysqli_query($mysqli, $sql);
		$row = mysqli_fetch_array($result);
		$count=mysqli_num_rows($result);

 		if(!empty($row)){
			$_SESSION['login_user']=$username;
			header("location: index.html");
		}
	}
		
