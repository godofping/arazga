<?php 
include('../connection.php');


if (isset($_POST['from']) and $_POST['from'] == 'sound') {


	$qry = mysqli_query($connection, "select * from setting_table where playerId = '" . $_SESSION['playerId'] . "'");

	if (mysqli_num_rows($qry) > 0) {
		mysqli_query($connection, "update setting_table set sound = '" . $_POST['sound'] . "' where playerId = '" . $_SESSION['playerId'] . "'");

		$_SESSION['sound'] = $_POST['sound'];
	}
	else
	{
		mysqli_query($connection, "insert into setting_table  (playerId, sound)  values  ( '" . $_SESSION['playerId'] . "', '" . $_POST['sound'] . "')");
		
		$_SESSION['sound'] = $_POST['sound'];
		
	}
	
}

if (isset($_POST['from']) and $_POST['from'] == 'music') {


	$qry = mysqli_query($connection, "select * from setting_table where playerId = '" . $_SESSION['playerId'] . "'");

	if (mysqli_num_rows($qry) > 0) {
		mysqli_query($connection, "update setting_table set music = '" . $_POST['music'] . "' where playerId = '" . $_SESSION['playerId'] . "'");

		$_SESSION['music'] = $_POST['music'];
	}
	else
	{
		mysqli_query($connection, "insert into setting_table  (playerId, music)  values  ( '" . $_SESSION['playerId'] . "', '" . $_POST['music'] . "')");
		
		$_SESSION['music'] = $_POST['music'];
		
	}
	
}


if (isset($_POST['from']) and $_POST['from'] == 'background') {


	$qry = mysqli_query($connection, "select * from setting_table where playerId = '" . $_SESSION['playerId'] . "'");

	if (mysqli_num_rows($qry) > 0) {
		mysqli_query($connection, "update setting_table set background = '" . $_POST['background'] . "' where playerId = '" . $_SESSION['playerId'] . "'");

		$_SESSION['background'] = $_POST['background'];
	}
	else
	{
		mysqli_query($connection, "insert into setting_table  (playerId, background)  values  ( '" . $_SESSION['playerId'] . "', '" . $_POST['background'] . "')");
		
		$_SESSION['background'] = $_POST['background'];
		
	}
	
}


 ?>