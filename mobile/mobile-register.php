<?php include('mobile-header.php');
if (isset($_SESSION['playerId'])) {
  header("Location: mobile-main-menu.php");
}
?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">

              <h5 class="text-center">Register Account</h5>
              
              <?php if (isset($_GET['failed'])): ?>
                <div class="alert alert-danger" role="alert">
                  <?php if ($_GET['failed'] == 'username-taken'): ?>
                    Username "<?php echo $_GET['username']; ?>" is already taken.
                  <?php endif ?>
                  <?php if ($_GET['failed'] == 'password-not-match'): ?>
                    Password does not mach to the confirm password.
                  <?php endif ?>
                </div> 
              <?php endif ?>


             
              <hr>
                <form method="POST" action="mobile-controller.php" autocomplete="off">

                  <div class="form-group">
                  <label>Username</label>
                  <input type="text" class="form-control" name="username" required="">
                  </div>

                  <div class="form-group">
                  <label>Password</label>
                  <input type="password" class="form-control" name="password" required="">
                  </div>

                  <div class="form-group">
                  <label>Confirm Password</label>
                  <input type="password" class="form-control" name="confirmPassword" required="">
                  </div>
                  

                  <button type="submit" class="btn btn-primary btn-block">Register</button>
                  <input type="text" name="from" value="mobile-register" hidden="">
                </form>
         
                <hr>
                <p>Already have an account?</p> <a href="mobile-login.php"><button type="submit" class="btn btn-success btn-block">Login Here</button></a>

                

      
            </div>
          </div>

        </div>
      </div>
      
    </div>


 <?php include('mobile-footer.php') ?>