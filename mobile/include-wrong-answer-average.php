<?php 

include('../connection.php');


$_SESSION['questionNumber']++;

$_SESSION['consecutiveCorrect'] = 0;

if ($_SESSION['questionNumber'] > 0 and  $_SESSION['questionNumber'] < 11)
{
	$_SESSION['stage'] = 1;
}

if ($_SESSION['questionNumber'] > 10 and  $_SESSION['questionNumber'] < 21)
{
	$_SESSION['stage'] = 2;
}

if ($_SESSION['questionNumber'] > 20 and  $_SESSION['questionNumber'] < 31)
{
	$_SESSION['stage'] = 3;
}

if ($_SESSION['questionNumber'] > 30 and  $_SESSION['questionNumber'] < 41)
{
	$_SESSION['stage'] = 4;
}

if ($_SESSION['questionNumber'] > 40 and  $_SESSION['questionNumber'] < 51)
{
	$_SESSION['stage'] = 5;
}

if ($_SESSION['questionNumber'] > 50 and  $_SESSION['questionNumber'] < 61)
{
	$_SESSION['stage'] = 6;
}
echo $_SESSION['questionNumber'];


 ?>

