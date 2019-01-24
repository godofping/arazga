<div class="card shadow mb-3">
	<div class="card-body">
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addQuestionModal">
	  ADD QUESTION
	</button>

	<!-- Modal -->
	<div class="modal fade" id="addQuestionModal" tabindex="-1" role="dialog" aria-labelledby="addQuestionModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="addQuestionModalLabel">Add</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<form method="POST" action="controller.php" autocomplete="off">

	      	<div class="form-group">
	      		<label>Question</label>
	      		<textarea class="form-control" name="difficultQuestion" required=""></textarea>
	      	</div>


			<div class="form-group">
			    <label>Answers <small>(separate the answers with ";")</small></label>
			    <textarea class="form-control" name="difficultAnswer" required=""></textarea>
			</div>

			<div class="form-group">
			    <label>Stage</label>
			    <select class="form-control" name="stage">
					<?php 
					$categoryID = '';
					if ($_GET['category'] == 'Hadeeth') {
						$categoryID = '1';
					}

					if ($_GET['category'] == 'Seerah') {
						$categoryID = '2';
					}

					if ($_GET['category'] == "Du'a") {
						$categoryID = '3';
					}

					if ($_GET['category'] == "Qur'an") {
						$categoryID = '4';
					}


					for ($i = 1; $i <= 10; $i++) { 
						$qry1 = mysqli_query($connection, "SELECT COUNT(*) AS result FROM difficult_question_table WHERE categoryId = '" . $categoryID . "' AND stage = '" . "Stage " . $i . "'");

						$res1 = mysqli_fetch_assoc($qry1);

						if ($res1['result'] <= 9) {
							
						
					?>
						<option value="Stage <?php echo $i; ?>">Stage <?php echo $i; ?></option>
					<?php } } ?>

			    </select>
			 </div>


	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">Save</button>
	       
	        <input type="text" name="category" value="<?php 
	        $category = 0;
	        if ($_GET['category'] == 'Hadeeth')
	        { 
	        	$category =  1;
	        	echo $category;
	        }
	        if ($_GET['category'] == 'Seerah')
	        { 
	        	$category =  2;
	        	echo $category;
	        } 
	        if ($_GET['category'] == "Du'a")
	        { 
	        	$category =  3;
	        	echo $category;
	        } 
	        if ($_GET['category'] == "Qur'an")
	        { 
	        	$category =  4;
	        	echo $category;
	        }  

	        ?>" hidden="">
	        <input type="text" name="from" value="add-question-difficult" hidden="">
	        </form>
	      </div>
	    </div>
	  </div>
	</div>

	</div>

</div>

<div class="card mt-3">
	<div class="card-body">
		
		<h3><?php echo $_GET['category']; ?> Questions <small>(<?php echo $_GET['difficulty']; ?>)</small></h3> 
		<hr>

		<?php 
		$counter = 1;

		for ($i=1; $i <= 10 ; $i++) { ?>
			<br>
			<h5><?php 

			$stageName = "Stage " . $i; 
			echo $stageName;
			$qry = mysqli_query($connection, "select * from difficult_question_table where stage = '" . $stageName . "' and categoryId = '" . $category . "' ");


			?></h5>
			

			<?php 
			
			while ($res = mysqli_fetch_assoc($qry)) { ?>
				<br>

				<p class="font-weight-bold"><?php echo "Question #" . $counter . ": " . $res['difficultQuestion']; ?></p>

				<ul >
					<?php $c = 0; $difficultAnswer = explode(";", $res['difficultAnswer']);
					foreach($difficultAnswer as $answersss) { $c++;?>
					<li><?php echo $answersss; ?></li>
					<?php } ?>
				</ul>

				<p>Remarks: <?php 

				$req = 0;

				if ($res['stage'] == 'Stage 1') {
					$req = 3;
				}

				if ($res['stage'] == 'Stage 2') {
					$req = 4;
				}

				if ($res['stage'] == 'Stage 3') {
					$req = 5;
				}

				if ($res['stage'] == 'Stage 4') {
					$req = 6;
				}

				if ($res['stage'] == 'Stage 5') {
					$req = 7;
				}

				if ($res['stage'] == 'Stage 6') {
					$req = 8;
				}

				if ($res['stage'] == 'Stage 7') {
					$req = 9;
				}

				if ($res['stage'] == 'Stage 8') {
					$req = 10;
				}

				if ($res['stage'] == 'Stage 9') {
					$req = 11;
				}

				if ($res['stage'] == 'Stage 10') {
					$req = 12;
				}

				if ($req == $c) {
					echo "";
				}
				else
				{
					echo "There should be " . $req . " answers";
				}

				 ?></p>
	
				
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updateQuestionModal<?php echo $res['difficultQuestionId'] ?>">EDIT</button> <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#deleteQuestionModal<?php echo $res['difficultQuestionId'] ?>">DELETE</button>
				<br>


	<!-- Modal -->
	<div class="modal fade" id="updateQuestionModal<?php echo $res['difficultQuestionId'] ?>" tabindex="-1" role="dialog" aria-labelledby="addQuestionModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="addQuestionModalLabel">Edit</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<form method="POST" action="controller.php" autocomplete="off">

	      	<div class="form-group">
	      		<label>Question</label>
	      		<textarea class="form-control" name="difficultQuestion" required=""><?php echo $res['difficultQuestion']; ?></textarea>
		    </div>

			<div class="form-group">
			    <label>Answers <small>(separate the answers with ";")</small></label>
			    <textarea class="form-control" name="difficultAnswer" required=""><?php echo $res['difficultAnswer']; ?></textarea>
			</div>

			 <div class="form-group">
			    <label>Stage</label>
			    <select class="form-control" name="stage">
			    	<option selected="" value="<?php echo $res['stage'] ?>"><?php echo $res['stage'] ?></option>
			    	<?php 


					for ($i1 = 1; $i1 <= 10; $i1++) { 
						$qry11 = mysqli_query($connection, "SELECT COUNT(*) AS result FROM difficult_question_table WHERE categoryId = '" . $categoryID . "' AND stage = '" . "Stage " . $i1 . "'");

						$res11 = mysqli_fetch_assoc($qry11);

						if ($res11['result'] <= 9) {
							
						
					?>
						<option value="Stage <?php echo $i1; ?>">Stage <?php echo $i1; ?></option>
					<?php } } ?>


			    </select>
			 </div>


	        
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">Save</button>
	        <input type="text" name="category" value="<?php 
	        $category = 0;
	        if ($_GET['category'] == 'Hadeeth')
	        { 
	        	$category =  1;
	        	echo $category;
	        }
	        if ($_GET['category'] == 'Seerah')
	        { 
	        	$category =  2;
	        	echo $category;
	        } 
	        if ($_GET['category'] == "Du'a")
	        { 
	        	$category =  3;
	        	echo $category;
	        } 
	        if ($_GET['category'] == "Qur'an")
	        { 
	        	$category =  4;
	        	echo $category;
	        }  

	        ?>" hidden="">
	        <input type="text" name="from" value="update-question-difficult" hidden="">
	        <input type="text" name="difficultQuestionId" value="<?php echo $res['difficultQuestionId'] ?>" hidden="">

	        </form>
	      </div>
	    </div>
	  </div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="deleteQuestionModal<?php echo $res['difficultQuestionId'] ?>" tabindex="-1" role="dialog" aria-labelledby="addQuestionModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="addQuestionModalLabel">Delete</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<form method="POST" action="controller.php" autocomplete="off">
	      	

			 <p>Are you sure to delete question "<?php echo $res['difficultQuestion']; ?>"?</p>


	        
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
	        <button type="submit" class="btn btn-primary">Yes</button>
	        <input type="text" name="from" value="delete-question-difficult" hidden="">
	        <input type="text" name="difficultQuestionId" value="<?php echo $res['difficultQuestionId'] ?>" hidden="">

	        </form>
	      </div>
	    </div>
	  </div>
	</div>




			<?php $counter++; } ?>

			<?php  ?>
<hr>
		<?php } ?>
	

		

	</div>
</div>