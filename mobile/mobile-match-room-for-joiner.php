<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

$qry = mysqli_query($connection, "select * from two_player_game_history_table where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");
	$res = mysqli_fetch_assoc($qry);

$_SESSION['gameMode'] = 'Play Two Player';

if (isset($_SESSION['twoPlayerGameHistoryId'])) {
  $id =  $_SESSION['twoPlayerGameHistoryId'];

  

}
else
{
  mysqli_query($connection, "update two_player_game_history_table set opponentId = '" . $_SESSION['playerId'] . "', matchStatus = 'Room is full' where twoPlayerGameHistoryId = '" . $_GET['twoPlayerGameHistoryId'] . "'");
  
  $id = $_GET['twoPlayerGameHistoryId'];

  $_SESSION['twoPlayerGameHistoryId'] = $id;	


  
}
?>

<div id="main-joiner"></div>


<script type="text/javascript">
  // /Android.musicController("stop");


      var opponentIpAddress = "";
      $.ajax({
          url: "http://ipinfo.io",
          async: true,
          dataType: 'json',
          success: function(data, status) {
              opponentIpAddress = data.ip;
              if (status == 'success') {
                 $.post('mobile-controller.php?',{from: "mobile-match-room-add-ip-to-opponent",opponentIpAddress: opponentIpAddress,twoPlayerGameHistoryId: "<?php echo $id; ?>"},function(){
                    $('#opponentIpAddress').html(opponentIpAddress);
                 });
              } 
          }
      });


      $.post("include-match-opponent.php",{id: "<?php echo $id; ?>"}, function(data, status){

        $('#main-joiner').html(data);

      });

      window.setInterval(function(){

      $.post("include-match-opponent.php",{id: "<?php echo $id; ?>"}, function(data, status){

        $('#main-joiner').html(data);

      });






       $.post("mobile-controller.php",{from: "check-if-match-room-exist",twoPlayerGameHistoryId: "<?php echo $id; ?>"}, function(data, status){

       	console.log(data);

       	if (data == 'no more') {
       		window.location.href = "mobile-find-match.php";

       	}

      });

    }, 3000);


      window.setInterval(function(){

      $.post("mobile-controller.php",{from:"game-started-opponent",twoPlayerGameHistoryId: "<?php echo $_GET['twoPlayerGameHistoryId']; ?>"}, function(data, status){

      	console.log(data);

       if (data == "In match") {

        <?php if (isset($res['difficulty']) and  $res['difficulty'] == 'Easy') { ?>
        		console.log("triggered");
          window.location.replace("mobile-two-player-game-easy.php?questionNumber=1");
        <?php } ?>

        <?php if (isset($res['difficulty']) and $res['difficulty'] == 'Average') { ?>
          window.location.replace("mobile-two-player-game-average.php?questionNumber=1");
        <?php } ?>

        <?php if (isset($res['difficulty']) and $res['difficulty'] == 'Difficult') { ?>
          window.location.replace("mobile-two-player-game-difficult.php?questionNumber=1");
        <?php } ?>
       }

      });

    }, 3000);


</script>




 <?php include('mobile-footer.php') ?>