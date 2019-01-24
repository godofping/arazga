<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}


$_SESSION['category'] = $_GET['category'];

if ($_SESSION['category'] == 'Hadeeth') {
    $_SESSION['category'] = '1';
}

if ($_SESSION['category'] == 'Seerah') {
    $_SESSION['category'] = '2';
}


if ($_SESSION['category'] == "Du'a") {
    $_SESSION['category'] = '3';
}


if ($_SESSION['category'] == "Qur'an") {
    $_SESSION['category'] = '4';
}



//unset

unset($_SESSION['score']);
unset($_SESSION['coins']);
unset($_SESSION['difficulty']);
unset($_SESSION['consecutiveCorrect']);
unset($_SESSION['questionNumber']);
$_SESSION['stage'] = 1;


?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">
              <h5 class="text-center">Please choose difficulty</h5>
               <hr>

                <div class="container">

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-easy-level-game.php?difficulty=Easy&questionNumber=1"><button type="button" class="btn btn-block btn-info">Easy</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-average-level-game.php?difficulty=Average&questionNumber=1"><button type="button" class="btn btn-block btn-info">Average</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-difficult-level-game.php?difficulty=Average&questionNumber=1"><button type="button" class="btn btn-block btn-info">Difficult</button></a>
                    </div>
                  </div>

         

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-play-solo-menu.php?button-clicked=<?php echo $_SESSION['gameMode']; ?>"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
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