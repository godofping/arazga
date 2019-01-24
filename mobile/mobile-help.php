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


              <h5 class="text-center">Help</h5>
               <hr>

                <div class="container">


                  <div class="row">
                    
                    <h6 class="text-center">
                      "50 / 50" - this eleminates the 2 wrong answers. It costs 50 coins.
                    <br><br>
                	"Remove extra letters" - This eleminates the extra letters. It costs 25 coins.

                    <br><br>
                    "Solve question" - This will solve the current question immediately. It costs 100 coins.
                    <br><br>
                    "Hint 1 answer" - This will give you 1 answer. It costs 50 coins
                    </h6>
          
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
 

