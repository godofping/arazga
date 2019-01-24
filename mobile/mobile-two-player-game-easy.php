<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}




if (isset($_SESSION['score'])) {
  $_SESSION['score'];
}
else
{
  $_SESSION['score'] = 0;
}

if (isset($_SESSION['coins'])) {
  $_SESSION['coins'];
}
else
{
  $_SESSION['coins'] = 0;
}

if (isset($_SESSION['consecutiveCorrect'])) {
  $_SESSION['consecutiveCorrect'];
}
else
{
  $_SESSION['consecutiveCorrect'] = 0;
}



$_SESSION['questionNumber'] = $_GET['questionNumber'];







if ($_SESSION['questionNumber'] == 31) {
  header("Location: mobile-game-over-two-player.php?twoPlayerGameHistoryId=".$_SESSION['twoPlayerGameHistoryId']."&score=".$_SESSION['score']."");
}






?>





<link rel="stylesheet" type="text/css" href="../css/iziToast.min.css">
<script type="text/javascript" src="../js/iziToast.min.js"></script>
<script type="text/javascript" src="../js/jquery.progressBarTimer.js"></script>


    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">

          
  <div class="card shadow mb-3">
    <div class="card-body">

      <div id="example10"></div>

 

          
<?php 

	$qry1 = mysqli_query($connection, "select * from generated_questions_table where twoPlayerGameHistoryId = '" . $_SESSION['twoPlayerGameHistoryId'] . "'");

	$res1 = mysqli_fetch_assoc($qry1);

	$qId = explode(" ", $res1['questionsIDs']);



  $qry = mysqli_query($connection, "select * from easy_question_table where easyQuestionId = '" . $qId[$_GET['questionNumber']] . "'");

  $res = mysqli_fetch_assoc($qry);

  $answer = $res['answer'];

  $answer = $res[$answer];

  // echo $answer;
  //show password


  $buttonId = '';

  $scramble = array("A", "B", "C", "D");
  shuffle($scramble);


  if ($answer == $res['choice' . $scramble[0]]) {
    $buttonId = $scramble[0];
  }
  if ($answer == $res['choice' . $scramble[1]]) {
    $buttonId = $scramble[1];
  }
  if ($answer == $res['choice' . $scramble[2]]) {
    $buttonId = $scramble[2];
  }
  if ($answer == $res['choice' . $scramble[3]]) {
    $buttonId = $scramble[3];
  }



 ?>


 
      <div class="row pt-2">
        <div class="col-12">
          <div id="scoreHolder"></div>
       
      </div>


      <div class="text-center  container-fluid">
        <h5 class="text-center">Question #<?php echo $_GET['questionNumber']; ?> (<?php 
        	if ($_GET['questionNumber'] < 11 and $_GET['questionNumber'] > 0)
        	 { 
        	 	echo "Stage 1"; 
        	 } 

        	if ($_GET['questionNumber'] < 21 and $_GET['questionNumber'] > 10) 
        	{ 
        		echo "Stage 2"; 
        	} 

        	if ($_GET['questionNumber'] < 31 and $_GET['questionNumber'] > 20) 
        	{ 
        		echo "Stage 3"; 
        	} 
        	?>)</h5>
      
     

      <h6 class="text-center" style="<?php if (strlen($res['question']) > 100): ?>
        font-size: 14px;
      <?php endif ?>"><?php echo $res['question']; ?></h6>

       <hr>


    </div>

      <ul style="list-style-type: upper-alpha;">
        <li><?php echo $res['choice'. $scramble[0]]; ?></li>
        <li><?php echo $res['choice'. $scramble[1]]; ?></li>
        <li><?php echo $res['choice'. $scramble[2]]; ?></li>
        <li><?php echo $res['choice'. $scramble[3]]; ?></li>
      </ul>
       <hr>

        <div class="container-fluid text-center align-middle">
          <div class="row mt-1 text-center" >

            <div class="col-6" >
              <button style="width: 30vw;" id="<?php echo $scramble[0]; ?>" value="<?php echo $res['choice' . $scramble[0]]; ?>" type="button" class="btn btn-danger">A</button>
            </div>

            <div class="col-6">
              <button style="width: 30vw;" id="<?php echo $scramble[1]; ?>" value="<?php echo $res['choice' . $scramble[1]]; ?>" type="button" class="btn btn-danger">B</button>
            </div>

          </div>

          <div class="row mt-2 text-center">
            <div class="col-6">
              <button style="width: 30vw;" id="<?php echo $scramble[2]; ?>" value="<?php echo $res['choice' . $scramble[2]]; ?>" type="button" class="btn btn-danger">C</button>
            </div>
  
            <div class="col-6">
              <button style="width: 30vw;" id="<?php echo $scramble[3]; ?>" value="<?php echo $res['choice' . $scramble[3]]; ?>" type="button" class="btn btn-danger">D</button>
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

 <script type="text/javascript">

    var coins1 = parseInt($('#coins').text());

    if (coins1 == 0) {
      $('#fiftyfity').prop("disabled", true);
    }


    function disableButton()
    {
      $('#<?php echo $buttonId; ?>').removeClass("btn-danger");
      $('#<?php echo $buttonId; ?>').addClass("btn-success");

      $('#A').prop("disabled", true);
      $('#B').prop("disabled", true);
      $('#C').prop("disabled", true);
      $('#D').prop("disabled", true);


    }

    $(document).ready(function() {


     

    

    $('#A').click(function() {

   

    $('#A').removeClass("btn-danger");
    $('#A').addClass("btn-warning");
      

    $('#example10').progressBarTimer().stop();
    disableButton();


    if ($("#A").val() == '<?php echo $answer ?>') {
      

      correctAnswer();

    }
    else
    {
      
      wrongAnswer();

    }

  
  });

    $('#B').click(function() {

    $('#B').removeClass("btn-danger");
    $('#B').addClass("btn-warning");
      

    $('#example10').progressBarTimer().stop();
    disableButton();

    if ($("#B").val() == '<?php echo $answer ?>') {

      
      correctAnswer();

    }
    else
    {

     wrongAnswer();
    }


  });

    $('#C').click(function() {

    $('#C').removeClass("btn-danger");
    $('#C').addClass("btn-warning");
      

    $('#example10').progressBarTimer().stop();
    disableButton();

    if ($("#C").val() == '<?php echo $answer ?>') {
      
      correctAnswer();

    }
    else
    {
      
      wrongAnswer();

    }


  });

    $('#D').click(function() {

    $('#D').removeClass("btn-danger");
    $('#D').addClass("btn-warning");
      

    $('#example10').progressBarTimer().stop();
    disableButton();

    if ($("#D").val() == '<?php echo $answer ?>') {
      
      correctAnswer();

    }
    else
    {

      wrongAnswer();
    }

 
        
  });


});




function correctAnswer()
{

  var scores = parseInt($('#score').text());
  scores += 1;
  $('#score').text(scores);


  $.get("include-right-answer-easy-twoplayer.php", function(data, status) {

          iziToast.show({
              title: 'Nice!',
              message: 'You are correct!',
              color: 'green',
              iconUrl: null,
              timeout: 3000,
              pauseOnHover: false,
              transitionInMobile: 'fadeIn',
              transitionOutMobile: 'fadeOut',
              drag: false,
              animateInside: true,
              progressBar: false,
              close: false,
              onClosed: function () {
                var num = data;
                $(location).attr('href', 'mobile-two-player-game-easy.php?questionNumber=' + num + '');
              },
              position: 'topCenter',
              close: false,
          });
      });

  playCorrectSound();
}


function wrongAnswer()
{
  $.get("include-wrong-answer-easy-twoplayer.php", function(data, status) {
          iziToast.show({
              title: 'Awww!',
              message: 'Incorrect answer!',
              color: 'red',
              iconUrl: null,
              timeout: 3000,
              pauseOnHover: false,
              transitionInMobile: 'fadeIn',
              transitionOutMobile: 'fadeOut',
              drag: false,
              animateInside: true,
              progressBar: false,
              close: false,
              onClosed: function () {
                var num = data;
                $(location).attr('href', 'mobile-two-player-game-easy.php?questionNumber=' + num + '');
              },
              position: 'topCenter',
              close: false,
          });
      });

  playWrongSound();
}



</script>


 <script type="text/javascript">
     $('#example10').progressBarTimer({ autoStart: true, smooth: true , animated: true, height: 30 ,label : { show: true, type: 'seconds' } , timeLimit: <?php if ($_GET['questionNumber'] < 11 and $_GET['questionNumber'] > 0) { echo 30; } if ($_GET['questionNumber'] < 21 and $_GET['questionNumber'] > 10) { echo 20; } if ($_GET['questionNumber'] < 31 and $_GET['questionNumber'] > 20) { echo 10; } ?>, onFinish : function () { 
       playWrongSound();
    disableButton();
    $.get("include-wrong-answer-easy-twoplayer.php", function(data, status) {
          

          iziToast.show({
              title: 'Opps!',
              message: 'Time is up!',
              color: 'red',
              iconUrl: null,
              timeout: 3000,
              pauseOnHover: false,
              transitionInMobile: 'fadeIn',
              transitionOutMobile: 'fadeOut',
              drag: false,
              animateInside: true,
              progressBar: false,
              close: false,


              onClosed: function () {

                var num = data;

               
                $(location).attr('href', 'mobile-two-player-game-easy.php?questionNumber=' + num + '');


              },
              position: 'topCenter',
              close: false,
          });

      });

  }});



     $.post("include-score.php", function(data, status){
        $('#scoreHolder').html(data);
      });
     
     window.setInterval(function(){

      $.post("include-score.php", function(data, status){
        $('#scoreHolder').html(data);
      });

    }, 3000);
 </script>



<?php if ($_SESSION['questionNumber'] == '1') { ?>
<script type="text/javascript">
  
   Android.musicController("<?php echo $_SESSION['music'] ?>");
  
</script>

<?php } ?>



<script type="text/javascript">
history.pushState(null, document.title, location.href);
window.addEventListener('popstate', function (event)
{
  history.pushState(null, document.title, location.href);
});
</script> 

