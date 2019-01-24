<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}



mysqli_query($connection, "insert into solo_player_game_history_table (playerId, score, categoryId, difficulty, dateAndTime, coins) values ('" . $_SESSION['playerId'] . "', '" . $_SESSION['score'] . "', '" . $_SESSION['category'] . "', '" . $_SESSION['difficulty'] . "' , '" . date('Y-m-d h:i:s') . "' , '" . $_SESSION['coins'] . "')");


?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">


              <h1 class="text-center">GAME OVER</h1>
              <h5 class="text-center">SCORE: <?php echo $_SESSION['score']; ?></h5>
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

<script type="text/javascript">
 
  Android.musicController("stop");
   Android.playGameOverSound();
</script>



 <?php include('mobile-footer.php') ?>
 

 <?php 

 unset($_SESSION['difficulty']);
 unset($_SESSION['score']);
 unset($_SESSION['stage']);
 unset($_SESSION['consecutiveCorrect']);
 unset($_SESSION['questionNumber']);
 unset($_SESSION['coins']);


  ?>