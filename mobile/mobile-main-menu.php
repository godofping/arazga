<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

unset($_SESSION['category']);
unset($_SESSION['score']);
unset($_SESSION['questionNumber']);
unset($_SESSION['twoPlayerGameHistoryId']);

?>


    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">
              <div class="row">
                <div class="col-md-12 text-center">
                    <img class = "img img-responsive" height="60" src="../icon/logo.png">
                </div>
              </div>
              <h3 class="text-center pt-3 font-weight-bold">ARAZGA</h3>
               <hr>

                <div class="container">

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-start-menu.php">
                        <button type="button" class="btn btn-block btn-info">Start</button>
                      </a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-instructions.php"><button type="button" class="btn btn-block btn-info">Instructions</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-settings.php"><button type="button" class="btn btn-block btn-info">Settings</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-help.php"><button type="button" class="btn btn-block btn-info">Help</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-leaderboard.php"><button type="button" class="btn btn-block btn-info">Leaderboard</button></a>
                    </div>
                  </div>


                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-controller.php?from=mobile-logout"><button type="button" class="btn btn-block btn-info">Exit</button></a>
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