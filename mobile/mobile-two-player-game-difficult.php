<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
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

  $qry = mysqli_query($connection, "select * from difficult_question_table where difficultQuestionId = '" . $qId[$_GET['questionNumber']] . "'");

  $res = mysqli_fetch_assoc($qry);

  $answer = strtoupper($res['difficultAnswer']);

  // echo $answer;
  //show password

  $difficultAnswer = explode(";",   $answer );
  $totalOfDifficultAnswer = count($difficultAnswer);


 ?>


      <div class="row pt-2 ">
        <div class="col-12">

    	<div id="scoreHolder"></div>
       
      </div>

        <div class="container-fluid text-center align-middle">


          <h5 class="text-center">Question #<?php echo $_GET['questionNumber']; ?> (<?php echo $res['stage']; ?>)</h5>
         


      <h6 class="text-center" style="<?php if (strlen($res['difficultQuestion']) > 100): ?>
        font-size: 14px;
      <?php endif ?>"><?php echo $res['difficultQuestion']; ?></h6>

      <div class="row text-center">
            <div class="col-6"><h5 id="even"></h5></div>
            <div class="col-6"><h5 id="odd"></h5></div>
        </div>


       <hr>

          <!-- words here -->

        <div class="form-group">
          <input type="text" id="playerAnswer" class="form-control">
          <button class="btn btn-block btn-secondary mt-2" id="submitButton">Submit</button>
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

  var currentScoreCounter = 0;

  var answers = [<?php

   foreach ($difficultAnswer as $answers) {
      echo '"' . preg_replace('/\s+/', '', $answers) . '",';
  } ?>];





    var coins1 = parseInt($('#coins').text());

    if (coins1 == 0) {
      $('#help').prop("disabled", true);
    }








function correctAnswer()
{

  var scores = parseInt($('#score').text());
  scores += 1;

  $('#score').text(scores);
  coins1 += 20;
  $('#coins').text(coins1);


  $.get("include-right-answer-easy-twoplayer.php", function(data, status) {

        if (answers.length  == 0) {
          $('#hint1Answer').prop("disabled", true);
        }

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
                if (answers.length  == 0) {
                  var num = data;
                  $(location).attr('href', 'mobile-two-player-game-difficult.php?questionNumber=' + num + '');
                }
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

              },
              position: 'topCenter',
              close: false,
          });
      });

  playWrongSound();
}



</script>

<script type="text/javascript">




$('#submitButton').click(function() {


//  Array.prototype.find = function(regex) {
//   return this.reduce(function (acc, curr, index, arr) {
//     if (regex.test(curr)) { acc.push(index); }
//     return acc;
//   }, [ ]);
// }



// console.log(answers.find(/^a/)); // Starts with 'a'? Outputs: [0]


//  console.log(answers);

  var playerAnswer = $("#playerAnswer").val();

  if (playerAnswer != '') {
    playerAnswer = playerAnswer.toUpperCase();
    playerAnswer = playerAnswer.replace(/\s/g,'');

    var index = answers.indexOf(playerAnswer);

    if (index > -1) {
      answers.splice(index, 1);
      correctAnswer();
      
       if (currentScoreCounter % 2 == 0) {
        var temp = $('#even').html();
       $('#even').html(temp +  "</br>" + playerAnswer);
       }

       if (currentScoreCounter % 2 == 1) {
        var temp = $('#odd').html();
       $('#odd').html(temp +  "</br>" + playerAnswer);
       }

       currentScoreCounter++;
    }
    else
    {
      wrongAnswer();
    }

    console.log(answers);

    $("#playerAnswer").val("");

  }


});


</script>

 <script type="text/javascript">
     $('#example10').progressBarTimer({ autoStart: true, smooth: true , animated: true, height: 30 ,label : { show: true, type: 'seconds' } , timeLimit: 30, onFinish : function () { 
       playWrongSound();
   
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

               
                $(location).attr('href', 'mobile-two-player-game-difficult.php?questionNumber=' + num + '');


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


