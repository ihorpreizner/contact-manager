<?php

ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);

	include('db.php');
	session_start();
	
if (isset($_POST['signup'])){
    if(empty($_POST['username'])){
    	echo "Enter Username!";
    }

	elseif(empty($_POST['email'])) {
	echo ' Enter E-mail!';
	}
	elseif (!preg_match("/^[a-zA-Z0-9_\.\-]+@([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,6}$/", $_POST['email'])) {
	echo 'E-mail has an invalid format!';
	}
	elseif ($_POST['password'] !== $_POST['conf_password']) {
		echo "Wrong confirmation password!";
	}

	$users = ['username','email','password'];

	foreach ($users as $key) {
		$_POST[$key] = trim($_POST[$key]);

	}
	
	$sql = "INSERT INTO  users  (`username`, `email`, `password`) VALUES  ('" . $_POST['username'] . "','" . $_POST['email'] . "','" . $_POST['password'] . "')";
	

	mysqli_query($mysqli, $sql);
	}
	 header ('Location: login.html');

