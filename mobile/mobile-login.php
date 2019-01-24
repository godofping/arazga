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
              <h5 class="text-center">ARAZGA: A Mobile Based Arabic Quiz Game Application</h5>

              <?php if (isset($_GET['failed'])): ?>
                <div class="alert alert-danger" role="alert">
                  <?php if ($_GET['failed'] == 'login'): ?>
                    Username and/or password is incorrect. Please login again.
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
                  <button type="submit" class="btn btn-primary btn-block">Login</button>
                  <input type="text" name="from" value="mobile-login" hidden="">
                </form>


                <hr>
                <p>No account?</p> <a href="mobile-register.php"><button type="button" class="btn btn-success btn-block">Register Here</button></a>
            </div>
          </div>

        </div>
      </div>
      
    </div>


<script type="text/javascript">
  $('body').css("background-color", "#4267b2");
</script>

 <?php include('mobile-footer.php') ?>