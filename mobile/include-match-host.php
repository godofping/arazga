<?php 

include('../connection.php');

$id = $_POST['id'];

$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $id . "'");
$res = mysqli_fetch_assoc($qry);

$qry1 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['hostId'] . "'");
$res1 = mysqli_fetch_assoc($qry1);

$qry5 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['opponentId'] . "'"); 
$res5 = mysqli_fetch_assoc($qry5);

 ?>
<div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">
              <h5 class="text-center">Match Room</h5>
               <hr>

                <div class="container">

                    <div class="row">
                      <div class="col-6">
                        <div class="form-group">
                        <label class="font-weight-bold">Match ID</label>
                        <p><?php echo $id; ?></p>
                        </div>
                      </div> 

                      <div class="col-6">
                        <div class="form-group">
                          <label class="font-weight-bold">Difficulty</label>
                          <p><?php echo $res['difficulty'] ?></p>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">

                      <div class="col-6">
                        <div class="form-group">
                          <label class="font-weight-bold">Host Username</label>
                          <p><?php echo $res1['username']; ?></p>
                        </div>
                      </div> 

                      <div class="col-6">
                        <div class="form-group">
                          <label class="font-weight-bold">Host IP</label>
                          <p id="hostIpAddress"><?php echo $res['hostIpAddress'] ?></p>
                        </div>
                      </div>
                    
                    </div>


                      

         			<?php if (isset($res['opponentIpAddress']) and isset($res5['username'])){ ?>
         			<div class="row">

                      <div class="col-6">
                        <div class="form-group">
                          <label class="font-weight-bold">Opponent Username</label>
                          <p id="opponentUsername"><?php echo $res5['username']; ?></p>
                        </div>
                      </div> 

                      <div class="col-6">
                        <div class="form-group">
                          <label class="font-weight-bold">Opponent IP</label>
                          <p id="opponentIpAddress"><?php echo $res['opponentIpAddress'] ?></p>
                        </div>
                      </div>
                    
                   		</div>
                   	<?php } ?>


                   		<?php if ($res['matchStatus'] == 'Room available') { ?>
                   			<h3 class="text-center font-weight-bold text-primary">Waiting for opponent.</h3>
                   		
                   		<?php } ?>
                   		
                   		<?php if ($res['matchStatus'] == 'Room is full') { ?>
                   			<h5 class="text-center font-weight-bold text-primary">Please press ready button.</h5>
                   			<button id="readyButton" class="btn btn-block btn-success">Ready</button>
                   		<?php } ?>

                   		<?php if ($res['matchStatus'] == 'Opponent is ready') { ?>
                   			<h5 class="text-center font-weight-bold text-primary">Opponent is ready. Please press ready button for the match to start.</h5>
                   			<button id="readyButton" class="btn btn-block btn-success">Ready</button>
                   		<?php } ?>

                   		<?php if ($res['matchStatus'] == 'Host is ready') { ?>
                   			<h5 class="text-center font-weight-bold text-success">You are ready. Please wait for the opponent to be ready.</h5>
                   		<?php } ?>

                   		<?php if ($res['matchStatus'] == 'In match') { ?>
                   			<h5 class="text-center font-weight-bold text-success">Both are ready. Game is starting soon.</h5>
                   		<?php } ?>
         			



                  <?php if ($res['matchStatus'] != 'In match') { ?>
                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-controller.php?from=cancel-match&twoPlayerGameHistoryId=<?php echo $id ?>"><button type="button" class="btn btn-block btn-secondary">Cancel Match</button></a>
                    </div>
                  </div>
                  <?php } ?>


                  <hr>

                </div>
      
            </div>
          </div>

        </div>
      </div>
      
    </div>


<script type="text/javascript">
	$('#readyButton').click(function(){


		$.post("mobile-controller.php",{from:"host-ready",twoPlayerGameHistoryId: "<?php echo $id; ?>",matchStatus: "<?php echo $res['matchStatus'] ?>"}, function(data, status){


      });
	});

</script>