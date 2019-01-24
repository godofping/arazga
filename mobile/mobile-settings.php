<?php include('mobile-header.php'); 
if (!isset($_SESSION['playerId'])) {
  header("Location: mobile-login.php");
}

unset($_SESSION['gameMode']);

?>



    <div class="container-fluid">
      <div class="row mt-3">
        <div class="col-md-12">
          
          <div class="card shadow mb-3">
            <div class="card-body">
              <h5 class="text-center">Settings</h5>
               <hr>

                <div class="container">

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">

                      <div class="form-group">
                        <label>Sound</label>
                        <select id="sound" class="form-control">
                          <option selected="" disabled=""><?php if ($_SESSION['sound'] == 'sound1') {
                            echo "Sound 1";
                          } if ($_SESSION['sound'] == 'sound2') {
                            echo "Sound 2";
                          } if ($_SESSION['sound'] == 'sound3') {
                            echo "Sound 3";
                          }?></option>
                          <option value="sound1">Sound 1</option>
                          <option value="sound2">Sound 2</option>
                          <option value="sound3">Sound 3</option>
                        </select>
                      </div>

                    </div>
                  </div>

                  <div class="row mt-3 text-center">
                    <div class="col-md-12">

                      <div class="form-group">
                        <label>Music</label>
                        <select id="music" class="form-control">
                          <option selected="" disabled=""><?php if ($_SESSION['music'] == 'music1') {
                            echo "Music 1";
                          } if ($_SESSION['music'] == 'music2') {
                            echo "Music 2";
                          } if ($_SESSION['music'] == 'music3') {
                            echo "Music 3";
                          }?></option>
                          <option value="music1">Music 1</option>
                          <option value="music2">Music 2</option>
                          <option value="music3">Music 3</option>
                        </select>
                      </div>

                    </div>
                  </div>


                  <div class="row mt-3 text-center">
                    <div class="col-md-12">

                      <div class="form-group">
                        <label>Background</label>
                        <select id="background" class="form-control">
                          <option selected="" disabled=""><?php if ($_SESSION['background'] == 'background1') {
                            echo "Background 1";
                          } if ($_SESSION['background'] == 'background2') {
                            echo "Background 2";
                          } if ($_SESSION['background'] == 'background3') {
                            echo "Background 3";
                          }?></option>
                          <option value="background1">Background 1</option>
                          <option value="background2">Background 2</option>
                          <option value="background3">Background 3</option>
                        </select>
                      </div>

                    </div>
                  </div>


                  <div class="row mt-3 text-center">
                    <div class="col-md-12">
                      <a href="mobile-main-menu.php?button-clicked=Play Two Players"><button type="button" class="btn btn-block btn-secondary">Back</button></a>
                    </div>
                  </div>


                  <hr>

                </div>


             
                

      
            </div>
          </div>

        </div>
      </div>
      
    </div>
   

    <script type="text/javascript">

      $('#sound').change(function(){

         var selectedSound = $('#sound').val();


        $.post('include-change-setting.php',{ from: "sound", sound: selectedSound }, function(data ,status){ 

          var toast= "";

          if(selectedSound == 'sound1'){
            toast = "Sound 1 is selected!";
          } 

          if(selectedSound == 'sound2'){
            toast = "Sound 2 is selected!";
          } 

          if(selectedSound == 'sound3'){
            toast = "Sound 3 is selected!";
          } 

          changeSoundInAndroid(toast, selectedSound); 

        }); 

      });
        



        function changeSoundInAndroid(toast, sound) {
          Android.changeSound(toast, sound);
    
        }


        $('#music').change(function(){

         var selectedMusic = $('#music').val();

        $.post('include-change-setting.php',{ from: "music", music: selectedMusic }, function(data ,status){ 

          var toast= "";
          
          if(selectedMusic == 'music1'){
            toast = "Music 1 is selected!";
          } 

          if(selectedMusic == 'music2'){
            toast = "Music 2 is selected!";
          } 

          if(selectedMusic == 'music3'){
            toast = "Music 3 is selected!";
          } 

          changeMusicInAndroid(toast, selectedMusic); 

        }); 

      });
        

        function changeMusicInAndroid(toast, music) {
          Android.changeMusic(toast, music);
         
        }


        $('#background').change(function(){

         var selectedBackground = $('#background').val();

         $('body').css('background-image', 'url(' +'../img/' + selectedBackground +'.jpg' + ')');

        $.post('include-change-setting.php',{ from: "background", background: selectedBackground }, function(data ,status)
          { 

            var toast= "";
            
            if(selectedBackground == 'background1'){
              toast = "Background 1 is selected!";
            } 

            if(selectedBackground == 'background2'){
              toast = "Background 2 is selected!";
            } 
            if(selectedBackground == 'background3'){
              toast = "Background 3 is selected!";
            } 

            changeBackgroundToastInAndroid(toast); 

          }); 

      });


        function changeBackgroundToastInAndroid(toast) {
          Android.changeBackgroundToast(toast);
         
        }




    </script>






 <?php include('mobile-footer.php') ?>