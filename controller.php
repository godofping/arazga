<?php

include("connection.php");

if (isset($_POST['from']) and $_POST['from'] == 'login') {
	
	$qry = mysqli_query($connection, "select * from admin_table where username = '" . $_POST['username'] . "' and password = '" . $_POST['password'] . "'");

	if (mysqli_num_rows($qry) > 0) {
		$res = mysqli_fetch_assoc($qry);
		$_SESSION['adminId'] = $res['adminId'];
		header("Location: index.php");
	}
	else
	{
		header("Location: login.php?s=failed");
	}
}

if (isset($_GET['from']) and $_GET['from'] == 'logout') {
	session_destroy();
	header("Location: login.php");

}

if (isset($_POST['from']) and $_POST['from'] == 'add-question-easy') {
	mysqli_query($connection, "insert into easy_question_table (question, choiceA, choiceB, choiceC, choiceD, answer,categoryId,stage) values ('" . mysqli_escape_string($connection, $_POST['question']) . "', '" . mysqli_escape_string($connection, $_POST['choiceA']) . "', '" . mysqli_escape_string($connection, $_POST['choiceB']) . "', '" . mysqli_escape_string($connection, $_POST['choiceC']) . "', '" . mysqli_escape_string($connection, $_POST['choiceD']) . "', '" . mysqli_escape_string($connection, $_POST['answer']) . "', '" . $_POST['category'] . "', '" . $_POST['stage'] . "')");

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}

if (isset($_POST['from']) and $_POST['from'] == 'update-question-easy') {


	mysqli_query($connection, "update easy_question_table set question = '" . mysqli_escape_string($connection,  $_POST['question']) . "', choiceA = '" . mysqli_escape_string($connection, $_POST['choiceA']) . "', choiceB = '" . mysqli_escape_string($connection, $_POST['choiceB']) . "', choiceC = '" . mysqli_escape_string($connection, $_POST['choiceC']) . "', choiceD = '" . mysqli_escape_string($connection, $_POST['choiceD']) . "', answer = '" . mysqli_escape_string($connection, $_POST['answer']). "', categoryId = '" . $_POST['category'] . "', stage = '" . $_POST['stage'] . "' where easyQuestionId = '" . $_POST['easyQuestionId'] . "' ");

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}

if (isset($_POST['from']) and $_POST['from'] == 'delete-question-easy') {


	mysqli_query($connection, "delete from easy_question_table where easyQuestionId = '" . $_POST['easyQuestionId'] . "' ");

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}


if (isset($_POST['from']) and $_POST['from'] == 'add-question-average') {
	mysqli_query($connection, "insert into average_question_table (averageQuestion, initialScrambledWord, averageAnswer, categoryId, stage) values ('" . mysqli_escape_string($connection, $_POST['averageQuestion']) . "', '" . mysqli_escape_string($connection, $_POST['initialScrambledWord']) . "', '" . mysqli_escape_string($connection, $_POST['averageAnswer']) . "', '" . $_POST['category'] . "', '" . $_POST['stage'] . "')");
	header("Location: " . $_SERVER["HTTP_REFERER"]);
}

if (isset($_POST['from']) and $_POST['from'] == 'update-question-average') {
	mysqli_query($connection, "update average_question_table set averageQuestion = '" . mysqli_escape_string($connection, $_POST['averageQuestion']) . "', initialScrambledWord = '" . mysqli_escape_string($connection, $_POST['initialScrambledWord']) . "', averageAnswer = '" . mysqli_escape_string($connection, $_POST['averageAnswer']) . "', stage = '" . $_POST['stage'] . "', categoryId = '" . $_POST['category'] . "'  where averageQuestionId = '" . $_POST['averageQuestionId'] . "'");

	

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}


if (isset($_POST['from']) and $_POST['from'] == 'delete-question-average') {
	mysqli_query($connection, "delete from average_question_table where averageQuestionId = '" . $_POST['averageQuestionId'] . "'");
	header("Location: " . $_SERVER["HTTP_REFERER"]);
}


if (isset($_POST['from']) and $_POST['from'] == 'add-question-difficult') {
	mysqli_query($connection, "insert into difficult_question_table (difficultQuestion, stage, categoryId, difficultAnswer) values ('" . mysqli_escape_string($connection, $_POST['difficultQuestion']) . "', '" . $_POST['stage'] . "', '" . $_POST['category'] . "', '" . mysqli_escape_string($connection, $_POST['difficultAnswer']) . "')");

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}


if (isset($_POST['from']) and $_POST['from'] == 'update-question-difficult') {
	mysqli_query($connection, "update difficult_question_table set difficultQuestion = '" . mysqli_escape_string($connection, $_POST['difficultQuestion']) . "', stage = '" . $_POST['stage'] . "', categoryId = '" . $_POST['category'] . "', difficultAnswer = '" . mysqli_escape_string($connection, $_POST['difficultAnswer']) . "' where difficultQuestionId = '" . $_POST['difficultQuestionId'] . "' ");

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}


if (isset($_POST['from']) and $_POST['from'] == 'delete-question-difficult') {
	mysqli_query($connection, "delete from difficult_question_table where difficultQuestionId = '" . $_POST['difficultQuestionId'] . "'");

	header("Location: " . $_SERVER["HTTP_REFERER"]);
}


?>