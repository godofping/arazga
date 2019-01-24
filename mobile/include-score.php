<?php include('../connection.php'); 





$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");
$res = mysqli_fetch_assoc($qry);

$qry1 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['hostId'] . "'");
$res1 = mysqli_fetch_assoc($qry1);

$qry2 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['opponentId'] . "'");
$res2 = mysqli_fetch_assoc($qry2);
?>

<div class="float-left"><p><?php echo $res1['username']; ?>: <b id="score"><?php echo  ($res['hostScore']); ?></b></p></div>
<div class="float-right"><p><?php echo $res2['username']; ?>: <b id="score"><?php echo  ($res['opponentScore']); ?></b></p></div>