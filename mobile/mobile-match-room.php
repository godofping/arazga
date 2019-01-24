<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

$_SESSION['gameMode'] = 'Play Two Player';


if (isset($_SESSION['twoPlayerGameHistoryId'])) {

  $id =  $_SESSION['twoPlayerGameHistoryId'];

}
else
{

  mysqli_query($connection, "insert into two_player_game_history_table (hostId, matchStatus, dateAndTime, difficulty) values ('" . $_SESSION['playerId'] . "', 'Room available', '" . date('Y-m-d H:i:s') . "', '" . $_POST['difficulty'] . "')");
  $id = mysqli_insert_id($connection);

  $_SESSION['twoPlayerGameHistoryId'] = $id;
  $_SESSION['difficulty'] = $_POST['difficulty'];

  $questionsIDs = "";

  if ($_POST['difficulty'] == 'Easy') {
    $qry = mysqli_query($connection, "SELECT * FROM easy_question_table ORDER BY RAND() LIMIT 30");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['easyQuestionId'];
    }

    mysqli_query($connection, "insert into generated_questions_table (questionsIDs, twoPlayerGameHistoryId) values ('" . $questionsIDs . "', '" . $id . "')");
  }

  if ($_POST['difficulty'] == 'Average') {

    $qry = mysqli_query($connection, "SELECT * FROM average_question_table where stage = 'Stage 1' ORDER BY RAND() LIMIT 10");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['averageQuestionId'];
    }

    $qry = mysqli_query($connection, "SELECT * FROM average_question_table where stage = 'Stage 2' ORDER BY RAND() LIMIT 10");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['averageQuestionId'];
    }

    $qry = mysqli_query($connection, "SELECT * FROM average_question_table where stage = 'Stage 3' ORDER BY RAND() LIMIT 10");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['averageQuestionId'];
    }



    mysqli_query($connection, "insert into generated_questions_table (questionsIDs, twoPlayerGameHistoryId) values ('" . $questionsIDs . "', '" . $id . "')");


  }


  if ($_POST['difficulty'] == 'Difficult') {

    $qry = mysqli_query($connection, "SELECT * FROM difficult_question_table where stage = 'Stage 1' ORDER BY RAND() LIMIT 10");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['difficultQuestionId'];
    }

    $qry = mysqli_query($connection, "SELECT * FROM difficult_question_table where stage = 'Stage 2' ORDER BY RAND() LIMIT 10");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['difficultQuestionId'];
    }



$qry = mysqli_query($connection, "SELECT * FROM difficult_question_table where stage = 'Stage 3' ORDER BY RAND() LIMIT 10");
    while ($res = mysqli_fetch_assoc($qry)) {
      
      $questionsIDs  = $questionsIDs . " " . $res['difficultQuestionId'];
    }


    mysqli_query($connection, "insert into generated_questions_table (questionsIDs, twoPlayerGameHistoryId) values ('" . $questionsIDs . "', '" . $id . "')");
  }
  
}




?>

  <div id="main-host"></div>


<script type="text/javascript">
  // /Android.musicController("stop");


      var hostIpAddress = "";

      $.ajax({
          url: "http://ipinfo.io",
          async: true,
          dataType: 'json',
          success: function(data, status) {
              hostIpAddress = data.ip;

              if (status == 'success') {



                 $.post('mobile-controller.php?',{from: "mobile-match-room-add-ip-to-host",hostIpAddress: hostIpAddress,twoPlayerGameHistoryId: "<?php echo $id; ?>"},function(){
                 
                 });
              } 
          }
      });


      $.post("include-match-host.php",{id: "<?php echo $id; ?>"}, function(data, status){

        $('#main-host').html(data);

      });

      window.setInterval(function(){

      $.post("include-match-host.php",{id: "<?php echo $id; ?>"}, function(data, status){

        $('#main-host').html(data);

      });

    }, 3000);



      window.setInterval(function(){

      $.post("mobile-controller.php",{from:"game-started",twoPlayerGameHistoryId: "<?php echo $id; ?>"}, function(data, status){

       if (data == "In match") {
        <?php if (isset($_SESSION['difficulty']) and  $_SESSION['difficulty'] == 'Easy') { ?>
          window.location.replace("mobile-two-player-game-easy.php?questionNumber=1&twoPlayerGameHistoryId=<?php echo $id; ?>");
        <?php } ?>

        <?php if (isset($_SESSION['difficulty']) and $_SESSION['difficulty'] == 'Average') { ?>
          window.location.replace("mobile-two-player-game-average.php?questionNumber=1&twoPlayerGameHistoryId=<?php echo $id; ?>");
        <?php } ?>

        <?php if (isset($_SESSION['difficulty']) and $_SESSION['difficulty'] == 'Difficult') { ?>
          window.location.replace("mobile-two-player-game-difficult.php?questionNumber=1&twoPlayerGameHistoryId=<?php echo $id; ?>");
        <?php } ?>
       }

      });

    }, 3000);

</script>

 <?php include('mobile-footer.php') ?>