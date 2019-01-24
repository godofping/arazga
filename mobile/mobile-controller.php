<?php

include("../connection.php");


if (isset($_POST['from']) and $_POST['from'] == 'mobile-register') {
	$qry = mysqli_query($connection, "select * from player_table where username = '" . $_POST['username'] . "'");
	if (mysqli_num_rows($qry) > 0) {
		header("Location: mobile-register.php?failed=username-taken&username=" . $_POST['username'] . "");
	}
	else
	{
		if ($_POST['password'] != $_POST['confirmPassword']) {
			header("Location: mobile-register.php?failed=password-not-match");
		}
		else
		{
			mysqli_query($connection, "insert into player_table (username, password) values ('" . $_POST['username'] . "', '" . $_POST['password'] . "')");

			$_SESSION['playerId'] = mysqli_insert_id($connection);

			$_SESSION['music'] ="music1";
			$_SESSION['sound'] ="sound1";
			$_SESSION['background'] = "background1";


			mysqli_query($connection, "insert into setting_table (playerId, music, sound, background) values ('" . $_SESSION['playerId'] . "', 'music1', 'sound1', 'background1')");

			
			header("Location: mobile-main-menu.php");
		}
		
	}
}

if (isset($_POST['from']) and $_POST['from'] == 'mobile-login') {
	$qry = mysqli_query($connection, "select * from player_table where username = '" . $_POST['username'] . "' and password = '" . $_POST['password'] . "'");
	if (mysqli_num_rows($qry) > 0) {

		$res = mysqli_fetch_assoc($qry);

		$_SESSION['playerId'] = $res['playerId'];



		$qry = mysqli_query($connection, "select * from setting_table where playerId = '" . $res['playerId'] . "'");
		$res = mysqli_fetch_assoc($qry);

		$_SESSION['music'] = $res['music'];
		$_SESSION['sound'] = $res['sound'];
		$_SESSION['background'] = $res['background'];

		header("Location: mobile-main-menu.php");

	}
	else
	{
		header("Location: mobile-login.php?failed=login");	
	}
}

if (isset($_GET['from']) and $_GET['from'] == 'mobile-logout') {
	session_destroy();
	header("Location: mobile-logout.php");
}


if (isset($_POST['from']) and $_POST['from'] == 'mobile-match-room-add-ip-to-host') {
	mysqli_query($connection, "update two_player_game_history_table set hostIpAddress = '" . $_POST['hostIpAddress'] . "' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] ."'");
}


if (isset($_POST['from']) and $_POST['from'] == 'mobile-match-room-add-ip-to-opponent') {
	mysqli_query($connection, "update two_player_game_history_table set opponentIpAddress = '" . $_POST['opponentIpAddress'] . "' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] ."'");
}




if (isset($_POST['from']) and $_POST['from'] == 'host-ready') {
	
	if ($_POST['matchStatus'] == 'Opponent is ready') {
		mysqli_query($connection, "update two_player_game_history_table set matchStatus = 'In match' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] ."'");
	}
	else
	{
		mysqli_query($connection, "update two_player_game_history_table set matchStatus = 'Host is ready' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] ."'");
	}

}

if (isset($_POST['from']) and $_POST['from'] == 'opponent-ready') {

	if ($_POST['matchStatus'] == 'Host is ready') {
		mysqli_query($connection, "update two_player_game_history_table set matchStatus = 'In match' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] ."'");
	}
	else
	{
		mysqli_query($connection, "update two_player_game_history_table set matchStatus = 'Opponent is ready' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] ."'");
	}


}


if (isset($_GET['from']) and $_GET['from'] == 'leave-match') {

	mysqli_query($connection, "update two_player_game_history_table set opponentIpAddress = '', opponentId = '', matchStatus = 'Room available' where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] ."'");

	unset($_SESSION['twoPlayerGameHistoryId']);
	unset($_SESSION['difficulty']);

	header("Location: mobile-find-match.php");
}



if (isset($_GET['from']) and $_GET['from'] == 'cancel-match') {

	mysqli_query($connection, "delete from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");

	mysqli_query($connection, "delete from generated_questions_table where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");


	unset($_SESSION['twoPlayerGameHistoryId']);
	unset($_SESSION['difficulty']);
	header("Location: mobile-create-match.php");

	
}




if (isset($_POST['from']) and $_POST['from'] == 'check-if-match-room-exist') {

	$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");

	if (mysqli_num_rows($qry) == 0) {
		unset($_SESSION['twoPlayerGameHistoryId']);
		unset($_SESSION['difficulty'] );
		echo "no more";
	}
	
}



if (isset($_POST['from']) and $_POST['from'] == 'game-started') {

	$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
	$res = mysqli_fetch_assoc($qry);

	echo $res['matchStatus'];
	
}

if (isset($_POST['from']) and $_POST['from'] == 'game-started-opponent') {

	$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
	$res = mysqli_fetch_assoc($qry);

	echo $res['matchStatus'];
	
}





?>