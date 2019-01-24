<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

$_SESSION['gameMode'] = 'Play Solo';

unset($_SESSION['category']);

?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">
              <h5 class="text-center">Please choose category</h5>
               <hr>

                <div class="container">

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-solo-choose-difficulty.php?category=Hadeeth"><button type="button" class="btn btn-block btn-info">Hadeeth</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-solo-choose-difficulty.php?category=Seerah"><button type="button" class="btn btn-block btn-info">Seerah</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-solo-choose-difficulty.php?category=Du'a"><button type="button" class="btn btn-block btn-info">Du'a</button></a>
                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-12">
                      <a href="mobile-solo-choose-difficulty.php?category=Qur'an"><button type="button" class="btn btn-block btn-info">Qur'an</button></a>
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