<?php include('../connection.php'); 





$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
$res = mysqli_fetch_assoc($qry);


if ($res['opponentScore'] > $res['hostScore']) {
  mysqli_query($connection, "update two_player_game_history_table set leadingScorerId = '" . $res['opponentId'] . "' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
}

if ($res['opponentScore'] < $res['hostScore']) {
  mysqli_query($connection, "update two_player_game_history_table set leadingScorerId = '" . $res['hostId'] . "' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
}


if ($res['opponentScore'] == $res['hostScore']) {
  mysqli_query($connection, "update two_player_game_history_table set leadingScorerId = '0' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
}


$qry1 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['hostId'] . "'");
$res1 = mysqli_fetch_assoc($qry1);

$qry2 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['opponentId'] . "'");
$res2 = mysqli_fetch_assoc($qry2);






if ($res['hostCurrentQuestionNumber'] == '16' and $res['opponentCurrentQuestionNumber'] == '16') {
	mysqli_query($connection, "update two_player_game_history_table set matchStatus = 'Match Ended' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");

}
else
{
	mysqli_query($connection, "update two_player_game_history_table set matchStatus = 'In match' where twoPlayerGameHistoryId = '" . $_POST['twoPlayerGameHistoryId'] . "'");
}



?>



<div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">

             
              <h6 class="text-center">Match ID <?php echo $res['twoPlayerGameHistoryId']; ?> (<?php echo $res['difficulty']; ?>)</h6>

              	<?php if ($res['hostCurrentQuestionNumber'] == '16' and $res['opponentCurrentQuestionNumber'] == '16'): ?>
              		 <h1 class="text-center">GAME OVER</h1>
              		<?php if ($_SESSION['playerId'] == $res['opponentId']): ?>
				<?php if ($res['hostScore'] < $res['opponentScore']): ?>
				<h2 class="text-center text-success">You won!</h2>
				<?php endif ?>
				<?php if ($res['hostScore'] > $res['opponentScore']): ?>
				<h2 class="text-center text-danger">You lose!</h2>
				<?php endif ?>
				<?php if ($res['hostScore'] == $res['opponentScore']): ?>
				<h2 class="text-center text-info">Draw!</h2>
				<?php endif ?>
				<?php endif ?>


				<?php if ($_SESSION['playerId'] == $res['hostId']): ?>
				<?php if ($res['hostScore'] > $res['opponentScore']): ?>
				<h2 class="text-center text-success">You won!</h2>
				<?php endif ?>
				<?php if ($res['hostScore'] < $res['opponentScore']): ?>
				<h2 class="text-center text-danger">You lose!</h2>
				<?php endif ?>

				<?php if ($res['hostScore'] == $res['opponentScore']): ?>
					
				<h2 class="text-center text-info">Draw!</h2>
				<?php endif ?>
				<?php endif ?>
              	<?php endif ?>

              <?php if ($res['hostCurrentQuestionNumber'] != '16') { ?>
              	<h5 class="text-center text-success"><?php echo $res1['username'] ; ?> has not yet finished.</h5>
              <?php } else { ?>
              	<h5 class="text-center text-success"><?php echo $res1['username'] ; ?> scored <?php echo  $res['hostScore']; ?>.</h5>
              <?php } ?>

              <?php if ($res['opponentCurrentQuestionNumber'] != '16') { ?>
              	<h5 class="text-center text-success"><?php echo $res2['username'] ; ?> has not yet finished.</h5>
              <?php } else { ?>
              	<h5 class="text-center text-success"><?php echo $res2['username'] ; ?> scored <?php echo  $res['opponentScore']; ?>.</h5>
              <?php } ?>



            
               <hr>

                <div class="container">

              
                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-main-menu.php"><button type="button" class="btn btn-block btn-secondary">Go Home</button></a>
                    </div>
                  </div>


                  <hr>




   
                </div>

      
            </div>
          </div>

        </div>
      </div>
      
    </div>









