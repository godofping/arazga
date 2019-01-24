<?php
include('../connection.php');
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/jquery-3.3.1.slim.min.js"></script>
    <style type="text/css">
      a:hover, a:visited, a:link, a:active
      {
          text-decoration: none !important;
      }

      .bg {


        /* The image used */
        background-image: url("../img/<?php echo $_SESSION['background'] ?>.jpg");

        background-size:100% 100%;

        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: repeat;
        background-size: cover;
      }


      .card { background-color: rgba(245, 245, 245, 0.4) !important; }
      .card-header, .card-footer { opacity: 1}

    </style>

    <style type="text/css">
     body {
   

    margin: 0;
    padding: 0;

    }

    html{
      height: 100vh;
    }


    </style>

    <script type="text/javascript">
      
        function playSound() {
          Android.playSound("<?php echo $_SESSION['sound']; ?>");
        }

        function playCorrectSound() {
          Android.playCorrectSound();
        }

        function playWrongSound() {
          Android.playWrongSound();
        }

        function playGameOverSound() {
          Android.playGameOverSound();
        }

    </script>




    <title>ARAZGA</title>
  </head>
  <body class="bg">
