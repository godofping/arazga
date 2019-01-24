<?php 
include('header.php');
 ?>

 <div class="container">
 	<div class="row">
 		<div class="col-md-12 pt-5">
 			<?php 
 			if (isset($_GET['difficulty']) and $_GET['difficulty'] == 'Easy') {
 				include("easy.php");
 			}

 			elseif (isset($_GET['difficulty']) and $_GET['difficulty'] == 'Average') {
 				include("average.php");
 			}

 			elseif (isset($_GET['difficulty']) and $_GET['difficulty'] == 'Difficult') {
 				include("difficult.php");
 			}

 			?>


 				
 		
			
 		</div>
 	</div>
 </div>


    

<?php 
include('footer.php');
?>