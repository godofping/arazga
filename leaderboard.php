<?php 
include('header.php');
 ?>

 <div class="container">
 	<div class="row">
 		<div class="col-md-12 pt-5">
 			
<div class="card mt-3">
	<div class="card-body">
		
		<h3>Leaderboard</h3> 
		<hr>

		<div class="container">
			<div class="row">
                    
                    <h6 class="text-center">Top 3 players with the most wins in "Easy" two player match.</h6>

                    <table class="table mt-3">
                      <thead class="thead-dark">
                        <tr>
                          <th scope="col" width="20%">Rank</th>
                          <th scope="col" width="60%">Username</th>
                          <th scope="col" width="20%">Total wins</th>
                        </tr>
                      </thead>
                      <tbody>

                        <?php $rank = 1; $qry = mysqli_query($connection, "SELECT COUNT(*) AS wins, leadingScorerId AS 'playerId' FROM two_player_game_history_table WHERE difficulty = 'Easy' AND leadingScorerId <> 0 GROUP BY leadingScorerId ORDER BY wins DESC LIMIT 3"); while ($res = mysqli_fetch_assoc($qry)) {
                          $qry1 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['playerId'] . "'");
                          $res1 = mysqli_fetch_assoc($qry1);
                          ?>
                        <tr>
                          <th scope="row"><?php echo $rank; $rank++; ?></th>
                          <td><?php echo $res1['username'] ?></td>
                          <td><?php echo $res['wins'] ?></td>
                        </tr>
                        <?php } ?>
                        
                      </tbody>
                    </table>

              
                  </div>

                  <div class="row">
                    
                    <h6 class="text-center">Top 3 players with the most wins in "Average" two player match.</h6>

                    <table class="table mt-3">
                      <thead class="thead-dark">
                        <tr>
                          <th scope="col" width="20%">Rank</th>
                          <th scope="col" width="60%">Username</th>
                          <th scope="col" width="20%">Total wins</th>
                        </tr>
                      </thead>
                      <tbody>

                        <?php $rank = 1; $qry = mysqli_query($connection, "SELECT COUNT(*) AS wins, leadingScorerId AS 'playerId' FROM two_player_game_history_table WHERE difficulty = 'Average' AND leadingScorerId <> 0 GROUP BY leadingScorerId ORDER BY wins DESC LIMIT 3"); while ($res = mysqli_fetch_assoc($qry)) {
                          $qry1 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['playerId'] . "'");
                          $res1 = mysqli_fetch_assoc($qry1);
                          ?>
                        <tr>
                          <th scope="row"><?php echo $rank; $rank++; ?></th>
                          <td><?php echo $res1['username'] ?></td>
                          <td><?php echo $res['wins'] ?></td>
                        </tr>
                        <?php } ?>
                        
                      </tbody>
                    </table>

              
                  </div>

                  <div class="row">
                    
                    <h6 class="text-center">Top 3 players with the most wins in "Difficult" two player match.</h6>

                    <table class="table mt-3">
                      <thead class="thead-dark">
                        <tr>
                          <th scope="col" width="20%">Rank</th>
                          <th scope="col" width="60%">Username</th>
                          <th scope="col" width="20%">Total wins</th>
                        </tr>
                      </thead>
                      <tbody>

                        <?php $rank = 1; $qry = mysqli_query($connection, "SELECT COUNT(*) AS wins, leadingScorerId AS 'playerId' FROM two_player_game_history_table WHERE difficulty = 'Difficult' AND leadingScorerId <> 0 GROUP BY leadingScorerId ORDER BY wins DESC LIMIT 3"); while ($res = mysqli_fetch_assoc($qry)) {
                          $qry1 = mysqli_query($connection, "select * from player_view where playerId = '" . $res['playerId'] . "'");
                          $res1 = mysqli_fetch_assoc($qry1);
                          ?>
                        <tr>
                          <th scope="row"><?php echo $rank; $rank++; ?></th>
                          <td><?php echo $res1['username'] ?></td>
                          <td><?php echo $res['wins'] ?></td>
                        </tr>
                        <?php } ?>
                        
                      </tbody>
                    </table>

              
                  </div>
		</div>

		
		

	</div>
</div>


 				
 		
			
 		</div>
 	</div>
 </div>


    

<?php 
include('footer.php');
?>