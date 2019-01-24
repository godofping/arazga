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
              <h5 class="text-center">Create match</h5>
               <hr>

                <div class="container">


                  

                  <form method="POST" action="mobile-match-room.php">
                    
                    <div class="form-group">
                      <label>Difficulty</label>
                      <select class="form-control" required="" name="difficulty">
                        <option>Easy</option>
                        <option>Average</option>
                        <option>Difficult</option>
                      </select>
                    </div>

                

                    <button type="submit" class="btn btn-block btn-success">Create</button>
                  </form>


                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-two-player-menu.php"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
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