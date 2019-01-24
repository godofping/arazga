<?php 

include('../connection.php');

$_SESSION['questionNumber']++;

$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
$res = mysqli_fetch_assoc($qry);

if ($_SESSION['playerId'] == $res['hostId']) {
	mysqli_query($connection, "update two_player_game_history_table set hostCurrentQuestionNumber = '" . $_SESSION['questionNumber'] . "' where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
}


if ($_SESSION['playerId'] == $res['opponentId']) {
	mysqli_query($connection, "update two_player_game_history_table set opponentCurrentQuestionNumber = '" . $_SESSION['questionNumber'] . "' where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
}

$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
$res = mysqli_fetch_assoc($qry);


if ($res['opponentScore'] > $res['hostScore']) {
	mysqli_query($connection, "update two_player_game_history_table set leadingScorerId = '" . $res['opponentId'] . "' where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
}

if ($res['opponentScore'] < $res['hostScore']) {
	mysqli_query($connection, "update two_player_game_history_table set leadingScorerId = '" . $res['hostId'] . "' where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
}


if ($res['opponentScore'] == $res['hostScore']) {

  mysqli_query($connection, "update two_player_game_history_table set leadingScorerId = '0' where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
}



echo $_SESSION['questionNumber'];

?>

