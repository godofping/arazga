<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}


if (isset($_SESSION['difficulty'])) {
  $_SESSION['difficulty'];
}
else
{
  $_SESSION['difficulty'] = $_GET['difficulty'];
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

if ($_SESSION['questionNumber'] == 101) {
  header("Location: mobile-game-over.php");
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

  $qry = mysqli_query($connection, "select * from difficult_question_table where categoryId = '" . $_SESSION['category'] . "' order by difficultQuestionId LIMIT 1 OFFSET " . ($_GET['questionNumber']-1) . "");

  $res = mysqli_fetch_assoc($qry);

  $answer = strtoupper($res['difficultAnswer']);

  // echo $answer;
  //show password

  $difficultAnswer = explode(";",   $answer );
  $totalOfDifficultAnswer = count($difficultAnswer);


 ?>


      <div class="row pt-2 ">
        <div class="col-12">
          <div class="float-left"><p>Score: <b id="score"><?php echo ($_SESSION['score']); ?></b> <br> Coins: <b id="coins"><?php echo ($_SESSION['coins']); ?></b></p></div>

          <div class="float-right"><button id="help" class="btn btn-info pt-2" data-toggle="modal" data-target="#helpModal" onclick="playSound();" >HELP</button>



          <!-- Modal -->
          <div class="modal hide"  id="helpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content" >
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">HELP</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body" >
                    <div class="row mt-2">
                        <div class="col-6"><button class="btn btn-info" id="hint1Answer">Hint 1 answer</button></div> 

                        <div class="col-6"><b>50 Coins</b></div> 
                    </div>
                </div>
              </div>
            </div>
          </div>

        </div>
       
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


  $.get("include-right-answer-difficult.php", function(data, status) {

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
                  $(location).attr('href', 'mobile-difficult-level-game.php?questionNumber=' + num + '');
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
  $.get("include-wrong-answer.php", function(data, status) {
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

$('#hint1Answer').click(function() {

  $('#helpModal').modal('toggle'); 

  var coins = parseInt($('#coins').text());
  if (coins >= 50) {
    coins -= 50;
    $('#coins').text(coins);
            
       if (currentScoreCounter % 2 == 0) {
        var temp = $('#even').html();
       $('#even').html(temp +  "</br>" + answers[0]);
       }

       if (currentScoreCounter % 2 == 1) {
        var temp = $('#odd').html();
       $('#odd').html(temp +  "</br>" + answers[0]);
       }

      answers.splice(0,1);
      currentScoreCounter++;

  

    var scores = parseInt($('#score').text());
  scores += 1;

  $('#score').text(scores);



$.get("include-help-hint-1answer.php", function(data, status) {

        if (answers.length  == 0) {
          $('#hint1Answer').prop("disabled", true);
        }

        if (coins < 50) {
        $('#hint1Answer').prop("disabled", true);
        }

          iziToast.show({
              title: 'Bonus used!',
              message: 'You got 1 answer.',
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
              position: 'topCenter',
              onClosed: function () {
                playCorrectSound();
                if (answers.length  == 0) {
                  var num = data;
                  $(location).attr('href', 'mobile-difficult-level-game.php?questionNumber=' + num + '');
                }
              },
              close: false,

          });
      });

  
    



  }


  playSound();


});


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
   
    $.get("include-wrong-answer.php", function(data, status) {
          

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

               
                $(location).attr('href', 'mobile-difficult-level-game.php?questionNumber=' + num + '');


              },
              position: 'topCenter',
              close: false,
          });

      });

  }});
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
