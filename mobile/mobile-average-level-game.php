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


if ($_SESSION['questionNumber'] == 61) {
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

  $qry = mysqli_query($connection, "select * from average_question_table where categoryId = '" . $_SESSION['category'] . "' order by averageQuestionId LIMIT 1 OFFSET " . ($_GET['questionNumber']-1) . "");



  $res = mysqli_fetch_assoc($qry);




  $answer = $res['averageAnswer'];

  $modifiedAnswer = rtrim(preg_replace('/\s+/', '', $res['averageAnswer']));
  $modifiedScrambledWord = rtrim(preg_replace('/\s+/', '', $res['initialScrambledWord']));

  $modifiedScrambledWord =  str_shuffle($modifiedScrambledWord);

  // echo $answer ."<br>";
  //show password

 ?>

  <script type="text/javascript">

     var buttonlist = [];

     $('#example10').progressBarTimer({ autoStart: true, smooth: true , animated: true, height: 30 ,label : { show: true, type: 'seconds' } , timeLimit: 20, onFinish : function () { 
      

    $('#example10').progressBarTimer().stop();
    disableButton();
    $.get("include-wrong-answer-average.php", function(data, status) {
          

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
                
                $(location).attr('href', 'mobile-average-level-game.php?questionNumber=' + num + '');



              },
              position: 'topCenter',
              close: false,
          });

      });

    playWrongSound();

  }});
 </script>



      <div class="row pt-2">
        <div class="col-12">
          <div class="float-left"><p>Score: <b id="score"><?php echo ($_SESSION['score']); ?></b> <br> Coins: <b id="coins"><?php echo ($_SESSION['coins']); ?></b></p></div>

          <div class="float-right"><button id="help" class="btn btn-info pt-2" data-toggle="modal" data-target="#helpModal" onclick="playSound();">HELP</button>

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

 

   

          <?php if ($res['stage'] != 'Stage 1'): ?>

            <div class="row  mt-2">
              <div class="col-6"><button class="btn btn-info" id="removeExtraLetters">Remove extra letters</button></div> 

              <div class="col-6"><b>25 Coins</b></div> 
            </div>

          
          <?php endif ?>

          <div class="row mt-2">
              <div class="col-6"><button class="btn btn-info" id="solveQuestionButton">Solve question</button></div> 

              <div class="col-6"><b>100 Coins</b></div> 
          </div>
         

      </div>

    </div>
  </div>
</div>



          </div>

        </div>
       
      </div>


      <h5 class="text-center">Question #<?php echo $_GET['questionNumber']; ?> (<?php echo $res['stage']; ?>)</h5>
   
       

     

      <h6 class="text-center" style="<?php if (strlen($res['averageQuestion']) > 100): ?>
        font-size: 14px;
      <?php endif ?>"><?php echo $res['averageQuestion']; ?></h6>

        <hr>

         <h2 id="theanswer" class="text-center font-weight-bold">
         <?php 
            $idcounter = 0;

            $array = str_split($answer);

            foreach ($array as $char) { 
              if ($char == ' ') { ?>
                <span  class="<?php echo $char ?>">&nbsp;</span>
              <?php }
              else
              { ?>
                <span id="<?php echo $idcounter; $idcounter++; ?>" class="<?php echo $char ?>">_</span>
              <?php }
            } ?>
            <br>
            </h2>

            <div class="row pt-4">
           <div class="col-12">
                <button id="clearbutton" class="btn btn-block btn-warning float-right"><img src="../icon/delete.svg" alt="icon name" height="20"></button>
           </div>
            </div>

       <hr>

        <div class="container-fluid align-middle text-center" >

          <div class="row mt-1">

            <?php 
            $counterforbutton = 1;
            $array = str_split($modifiedScrambledWord);
            
              foreach ($array as $char) { ?>

                <?php if ($counterforbutton % 7 == 0): ?>
                   </div>
                   <div class="row">
                <?php endif ?>

              <script type="text/javascript">
                 buttonlist.push('#<?php echo $char . $counterforbutton; ?>');
              </script>


              <div class="col-2  mt-1">
                  <button id="<?php echo $char . $counterforbutton;$counterforbutton++; ?>" value="<?php echo $char;?>" type="button" class="btn btn-danger"><?php echo $char;?></button>
              </div>

              
               <?php if ($counterforbutton % 7 == 0): ?>
                  </div>
                  <div class="row">
                <?php endif ?>


          
             <?php } ?>

 </div>
        </div>
   <hr>


<!-- <button id="test">rex</button> -->
 

  <script type="text/javascript">
    var buttonclicked = [];
    var answer = "<?php echo $answer ?>";
    var clickcounter = 0;
    var theanswer = "";
    var modifiedAnswer = "<?php echo $modifiedAnswer ?>";


    var coins1 = parseInt($('#coins').text());
    if (coins1 == 0) {
      $('#solveQuestionButton').prop("disabled", true);
    }


    $('#clearbutton').click(function(){


      if (theanswer.length > 0) {
        

        theanswer = theanswer.slice(0,theanswer.length-1);
        
        $('#' + (clickcounter-1)).text("_");
       
        clickcounter -= 1;

        $(buttonclicked.pop()).removeAttr('disabled');
         playSound();


      }

    });

    // $('#test').click(function(){

    //   alert('Remaining Time: ' + $('#example10').progressBarTimer().getRemainingTime() + ' secs');
  

    // });
    


    $('#removeExtraLetters').click(function(){
      var btnCan = [];
      var btnStr = "";

      $.each(buttonlist , function(index, val) { 
        
        var str = (index, val);
        var chr = str.substring(1, 2);

        if (modifiedAnswer.indexOf(chr) > -1)
        {
       
          btnCan.push(str);
          btnStr += chr;
        }
        else
        {
          $(str).hide();

        }

      });





      for( var x in modifiedAnswer ) {
        chrCounterModifiedAnswer = char_count(modifiedAnswer,  modifiedAnswer[x]);
        chrCounterBtnStr = char_count(btnStr,  modifiedAnswer[x]);

        if (chrCounterModifiedAnswer == chrCounterBtnStr) {
          // console.log("okay");
        }
        else
        {
          var numberOfChrToRemove =  chrCounterBtnStr -  chrCounterModifiedAnswer;
          
          var indices = [];
          for(var i=0; i<btnStr.length;i++) {
              if (btnStr[i] === modifiedAnswer[x]) indices.push(i);
          }

            

          var rand = indices[Math.floor(Math.random() * indices.length)];


          var btnStr = btnStr.substring(0,(rand+1) - 1) + btnStr.substring((rand+1) , btnStr.length);

          $(btnCan[rand]).hide();

          btnCan.splice(rand, 1);
         

        }


        if (theanswer.length > 0) {
        

        theanswer = theanswer.slice(0,theanswer.length-1);
        
        $('#' + (clickcounter-1)).text("_");
       
        clickcounter -= 1;

        $(buttonclicked.pop()).removeAttr('disabled');
         

         console.log("triggered");


        }


      }




      




      $('#removeExtraLetters').prop("disabled", true);

      });


    function char_count(str, letter) 
    {
     var letter_Count = 0;
     for (var position = 0; position < str.length; position++) 
     {
        if (str.charAt(position) == letter) 
          {
          letter_Count += 1;
          }
      }
      return letter_Count;
    }



    $('#solveQuestionButton').click(function(){
      $('#solveQuestionButton').prop("disabled", true);
      var userCoins = $('#coins').text();

      if (userCoins >= 100) {
        userCoins -= 100;
        $('#coins').text(userCoins);


      $.get("include-help-correct-answer.php");

      <?php 
        $idcounter = 0;

        $array = str_split($modifiedAnswer);

        foreach ($array as $char) { ?>
          $('#<?php echo $idcounter; ?>').text("<?php echo $char ?>");
        <?php $idcounter++; } ?>


      $('#helpModal').modal('toggle'); 
      theanswer = "<?php echo $modifiedAnswer ?>";
      checkIfCorrectAnswer();
 

      }
      else
      {
        iziToast.show({
              title: 'Awww!',
              message: 'Coins not enough!',
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
      }
 
    playSound();

    });




    <?php 
    $counterforbutton = 1;
   

    $array = str_split($modifiedScrambledWord);
    foreach ($array as $char) { ?>

  $('#<?php echo $char . $counterforbutton; ?>').click(function(){
    

    if (modifiedAnswer.length != theanswer.length) {

    $('#' + clickcounter).text("<?php echo $char ?>");
    clickcounter++;
    theanswer += "<?php echo $char ?>";



    buttonclicked.push('#<?php echo $char . $counterforbutton; ?>');
   

    checkIfCorrectAnswer();
    
    $('#<?php echo $char . $counterforbutton; $counterforbutton++; ?>').prop("disabled", true);
    playSound();
  }

  });
  
    <?php } ?>


    function checkIfCorrectAnswer()
    {
      
      if (modifiedAnswer.length == theanswer.length) {
        if (theanswer == modifiedAnswer) {

          $('#example10').progressBarTimer().stop();
          disableButton();
          
            $.get("include-right-answer-average.php", function(data, status) {
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
                  $(location).attr('href', 'mobile-average-level-game.php?questionNumber=' + num + '');
                },
                position: 'topCenter',
                close: false,
            });
        });

            playCorrectSound();

        }
        else
        {
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

          playWrongSound();
        }

      }
      
    }

    function disableButton() {
        


       $.each(buttonlist , function(index, val) { 
   


        $((index, val)).prop("disabled", true);
      });



       $('#clearbutton').prop("disabled", true);

       $('#help').prop("disabled", true);

    }

  
</script>







          

        </div>
      </div>

         </div>
  </div>
      
    </div>




 <?php include('mobile-footer.php') ?>



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

