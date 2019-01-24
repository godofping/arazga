<?php
include('connection.php');
if (!isset($_SESSION['adminId'])) {
  header("Location: login.php");
}
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>ARAZGA</title>
  </head>
  <body>
  	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.php">ARAZGA ADMIN</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
      <?php 
      $qry = mysqli_query($connection, "select * from category_table");
      while ($res = mysqli_fetch_assoc($qry)) { ?>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <?php echo $res['category']; ?>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="manage-questions.php?category=<?php echo $res['category'] ?>&difficulty=Easy">Easy</a>
            <a class="dropdown-item" href="manage-questions.php?category=<?php echo $res['category'] ?>&difficulty=Average">Average</a>
            <a class="dropdown-item" href="manage-questions.php?category=<?php echo $res['category'] ?>&difficulty=Difficult">Difficult</a>
          </div>
        </li>
      <?php } ?>

        <li class="nav-item">
        <a class="nav-link" href="leaderboard.php">Leaderboard</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="players.php">Players</a>
        </li>


      

    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li class="nav-item"> <a href="controller.php?from=logout"><button class="btn btn-outline-warning">Logout</button></a></li>
    </ul>


  </div>
</nav>