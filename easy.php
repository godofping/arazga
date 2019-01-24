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
	      		<textarea class="form-control" name="question" required=""></textarea>
	      	</div>

	      	<div class="form-group">
			    <label>Choice A</label>
			    <input type="text" class="form-control" name="choiceA" required="">
			 </div>

			 <div class="form-group">
			    <label>Choice B</label>
			    <input type="text" class="form-control" name="choiceB" required="">
			 </div>

			 <div class="form-group">
			    <label>Choice C</label>
			    <input type="text" class="form-control" name="choiceC" required="">
			 </div>

			 <div class="form-group">
			    <label>Choice D</label>
			    <input type="text" class="form-control" name="choiceD" required="">
			 </div>

			 <div class="row">
			 	<div class="col-md-6">
			 		<div class="form-group">
			    <label>Answer</label>
			    <select class="form-control" name="answer">
			    	<option value="choiceA">Choice A</option>
			    	<option value="choiceB">Choice B</option>
			    	<option value="choiceC">Choice C</option>
			    	<option value="choiceD">Choice D</option>
			    </select>
			 </div>

			 	</div>
			 	<div class="col-md-6">
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


					for ($i = 1; $i <= 5; $i++) { 
						$qry1 = mysqli_query($connection, "SELECT COUNT(*) AS result FROM easy_question_table WHERE categoryId = '" . $categoryID . "' AND stage = '" . "Stage " . $i . "'");

						$res1 = mysqli_fetch_assoc($qry1);

						if ($res1['result'] <= 9) {
							
						
					?>
						<option value="Stage <?php echo $i; ?>">Stage <?php echo $i; ?></option>
					<?php } } ?>

			    </select>
			 </div>
			 	</div>
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
	        <input type="text" name="from" value="add-question-easy" hidden="">
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

		for ($i=1; $i <= 5 ; $i++) { ?>
			<br>
			<h5><?php 

			$stageName = "Stage " . $i; 
			echo $stageName;
			$qry = mysqli_query($connection, "select * from easy_question_table where stage = '" . $stageName . "' and categoryId = '" . $category . "' ");


			?></h5>

			<?php 
			
			while ($res = mysqli_fetch_assoc($qry)) { ?>
				<br>

				<p class="font-weight-bold"><?php echo "Question #" . $counter . ": " . $res['question']; ?></p>
				<ul style="list-style-type: none;">
					<li <?php if ($res['answer'] == 'choiceA') {?> class="font-weight-bold" <?php } ?> >Choice A: <?php echo $res['choiceA']; ?></li>
					<li <?php if ($res['answer'] == 'choiceB') {?> class="font-weight-bold" <?php } ?> >Choice B: <?php echo $res['choiceB']; ?></li>
					<li <?php if ($res['answer'] == 'choiceC') {?> class="font-weight-bold" <?php } ?> >Choice C: <?php echo $res['choiceC']; ?></li>
					<li <?php if ($res['answer'] == 'choiceD') {?> class="font-weight-bold" <?php } ?> >Choice D: <?php echo $res['choiceD']; ?></li>
				</ul>


				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updateQuestionModal<?php echo $res['easyQuestionId'] ?>">EDIT</button> <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#deleteQuestionModal<?php echo $res['easyQuestionId'] ?>">DELETE</button>
				<br>


	<!-- Modal -->
	<div class="modal fade" id="updateQuestionModal<?php echo $res['easyQuestionId'] ?>" tabindex="-1" role="dialog" aria-labelledby="addQuestionModalLabel" aria-hidden="true">
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
	      		<textarea class="form-control" name="question" required=""><?php echo $res['question']; ?></textarea>
	      	</div>

	      	<div class="form-group">
			    <label>Choice A</label>
			    <input type="text" class="form-control" name="choiceA" required="" value="<?php echo $res['choiceA']; ?>">
			 </div>

			 <div class="form-group">
			    <label>Choice B</label>
			    <input type="text" class="form-control" name="choiceB" required="" value="<?php echo $res['choiceB']; ?>">
			 </div>

			 <div class="form-group">
			    <label>Choice C</label>
			    <input type="text" class="form-control" name="choiceC" required="" value="<?php echo $res['choiceC']; ?>">
			 </div>

			 <div class="form-group">
			    <label>Choice D</label>
			    <input type="text" class="form-control" name="choiceD" required="" value="<?php echo $res['choiceD']; ?>">
			 </div>

			 <div class="row">
			 	<div class="col-md-6">
			 		<div class="form-group">
				    <label>Answer</label>
				    <select class="form-control" name="answer">


				    	<option <?php if ($res['answer'] == 'choiceA') {?> selected <?php } ?> value="choiceA">Choice A</option>
				    	<option <?php if ($res['answer'] == 'choiceB') {?> selected <?php } ?> value="choiceB">Choice B</option>
				    	<option <?php if ($res['answer'] == 'choiceC') {?> selected <?php } ?> value="choiceC">Choice C</option>
				    	<option <?php if ($res['answer'] == 'choiceD') {?> selected <?php } ?> value="choiceD">Choice D</option>
				    </select>
				 </div>

			 	</div>

			 	<div class="col-md-6">
			 		<div class="form-group">
				    <label>Stage</label>
				    <select class="form-control" name="stage">

				    	<option selected=""><?php echo $res['stage']; ?></option>


				    	<?php 


						for ($i1 = 1; $i1 <= 5; $i1++) { 
							$qry11 = mysqli_query($connection, "SELECT COUNT(*) AS result FROM easy_question_table WHERE categoryId = '" . $categoryID . "' AND stage = '" . "Stage " . $i1 . "'");

							$res11 = mysqli_fetch_assoc($qry11);

							if ($res11['result'] <= 9) {
								
							
						?>
							<option <?php if ($res['stage'] == 'Stage ' . $i1 ) {?> selected <?php } ?> value="Stage <?php echo $i1; ?>">Stage <?php echo $i1; ?></option>
						<?php } } ?>


				    </select>
				 </div>
			 	</div>
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
	        <input type="text" name="from" value="update-question-easy" hidden="">
	        <input type="text" name="easyQuestionId" value="<?php echo $res['easyQuestionId'] ?>" hidden="">

	        </form>
	      </div>
	    </div>
	  </div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="deleteQuestionModal<?php echo $res['easyQuestionId'] ?>" tabindex="-1" role="dialog" aria-labelledby="addQuestionModalLabel" aria-hidden="true">
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
	      	

			 <p>Are you sure to delete question "<?php echo $res['question']; ?>"?</p>


	        
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
	        <button type="submit" class="btn btn-primary">Yes</button>
	        <input type="text" name="from" value="delete-question-easy" hidden="">
	        <input type="text" name="easyQuestionId" value="<?php echo $res['easyQuestionId'] ?>" hidden="">

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