<?php

require_once ('configuration.php');

$contacts = ['firstname', 'lastname', 'email', 'homephone', 'workphone', 'cellphone', 'address1', 'address2', 'city', 'state', 'zip', 'country', 'birthdate'];
foreach ($contacts as $key) {
		$_POST[$key] = trim($_POST[$key]);
	}


$sql = "INSERT INTO contacts  (`firstname`, `lastname`, `email`, `homephone`, `workphone`, `cellphone`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `birthdate`) VALUES
('" . $_POST['firstname'] . "','" . $_POST['lastname'] . "','" . $_POST['email'] . "','" . $_POST['homephone'] . "','" . $_POST['workphone'] . "','" . $_POST['cellphone'] . "','" . $_POST['address1'] . "','" . $_POST['address2'] . "','" . $_POST['city'] . "','" .$_POST['state'] . "','" . $_POST['zip'] . "','" . $_POST['country'] . "','". $_POST['birthdate'] ."')";	
mysqli_query($mysqli, $sql) ;
		

