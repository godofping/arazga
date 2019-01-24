<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

$_SESSION['gameMode'] = 'Two Player';

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
              <h5 class="text-center">Two player menu</h5>
               <hr>

                <div class="container">

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-create-match.php"><button type="button" class="btn btn-block btn-info">Create Match</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-find-match.php"><button type="button" class="btn btn-block btn-info">Find Match</button></a>
                    </div>
                  </div>



                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-start-menu.php"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
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