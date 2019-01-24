<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

unset($_SESSION['gameMode']);
unset($_SESSION['category']);
unset($_SESSION['score']);
unset($_SESSION['questionNumber']);
unset($_SESSION['twoPlayerGameHistoryId']);

?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">
              <h5 class="text-center">Please choose game mode</h5>
               <hr>

                <div class="container">

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-play-solo-menu.php?button-clicked=Play Solo"><button type="button" class="btn btn-block btn-info">Play Solo</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-two-player-menu.php"><button type="button" class="btn btn-block btn-info">Play Two Players</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-main-menu.php?button-clicked=Play Two Players"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
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
</script>



 <?php include('mobile-footer.php') ?>