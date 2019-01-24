<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}


$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");
$res = mysqli_fetch_assoc($qry);



if ($_SESSION['playerId'] == $res['hostId']) {
	mysqli_query($connection, "update two_player_game_history_table set hostScore = '" . $_GET['score'] . "' where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");
	$playeris = "host";
}

if ($_SESSION['playerId'] == $res['opponentId']) {
	mysqli_query($connection, "update two_player_game_history_table set opponentScore = '" . $_GET['score'] . "' where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");
	$playeris = "opponent";
}

?>


<div id="game-over-holder"></div>





<script type="text/javascript">



	$.post("include-two-player-gameover.php",{playeris: "<?php echo $playeris; ?>", twoPlayerGameHistoryId: "<?php echo $_GET['twoPlayerGameHistoryId'] ?>"}, function(data, status){
      	$('#game-over-holder').html(data);
      });


	window.setInterval(function(){

      $.post("include-two-player-gameover.php",{playeris: "<?php echo $playeris; ?>", twoPlayerGameHistoryId: "<?php echo $_GET['twoPlayerGameHistoryId'] ?>"}, function(data, status){
      	$('#game-over-holder').html(data);
      });

    }, 3000);


 
 // Android.musicController("stop");
  // Android.playGameOverSound();
</script>



 <?php include('mobile-footer.php') ?>
 

 <?php 

 unset($_SESSION['difficulty']);
 unset($_SESSION['score']);
 unset($_SESSION['questionNumber']);


  ?>