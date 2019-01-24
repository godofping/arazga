<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

?>

    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">


              <h5 class="text-center">Instructions</h5>
               <hr>

                <div class="container">


                  <div class="row">
                    
                    <h6 class="text-center">
                      To play solo match, Press "Start" from the main menu. Then press "Play Solo", after that you choose the category. Lastly, choose the difficulty you want to play.
                    <br><br>
                    In "Easy" level solo match game, there are 3 stages. Each stages has 10 questions. In the first stage you have 30 seconds, 20 seconds for stage 2 and 10 seconds for stage 3 to answer the question. To answer the question just click the button of your choice. Each correct answer will gain you 1 score. 3 consecutive correct anwers will give give you 100 coins.
                    <br><br>

                    In "Average" level solo match game, there are 6 stages. Each stages has 10 questions. You have 20 seconds to answer each questions. In the first stage you have no additional letters from the choices, stage 2 has 4 additional letters, stage 3 has 6 , stage 4 has 8, stage 5 has 10 and stage 6 has 12 additional letters. To answer the question just click the letters to complete the hidden word. Each correct answer will gain you 1 score. 3 consecutive correct anwers will give give you 100 coins.
             
                    <br><br>

                    In "Difficult" level solo match game, there are 10 stages. Each stages has 10 questions. To answer, just type your answer in the text box and press submit button. Each correct answer will gain you 1 score and 20 cons.

                    <br><br>
                     To play two player match, Press "Start" from the main menu. Then press "Play Two Players". You have to choices, either you create the match or join. To create a match just press the "Create Match" and then select the level of difficulty. After that press "Create". Then you will have to wait for an opponent to join the match. If there is an opponent just press "Ready". If both players are ready the match would start automatically. If you press the "Cancel Match", you will return back to "Create match" view.
                    <br>
                     If you want to join others match, just press the "Find Match" from the "Two player menu". Then a list of matches will display. The name of host, the difficulty and the match id are on the list. You can only see the matches that are available. Just press "join" to join the match. Press "Ready" for the match to start automatically. 
                    <br><br>




                    </h6>
          
                  </div>

              
                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-main-menu.php"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
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
 

