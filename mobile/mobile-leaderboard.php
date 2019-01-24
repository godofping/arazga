<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">


              <h5 class="text-center">Leaderboard</h5>
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

              
                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-main-menu.php"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
                    </div>
                  </div>


                  <hr>




   
                </div>

      
            </div>
          </div>

        </div>
      </div>
      
    </div>


 <?php include('mobile-footer.php') ?>
 

