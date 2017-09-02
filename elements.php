<?php 
include_once('inc/functions.php');
include_once('inc/elementClass.php');
include_once 'inc/db_connect.php';

sec_session_start();

if (isset($_POST['element'])){

	$element = $_POST['element'];
	

$newElement = new addElement($element, $mysqli);
$newElement->setElement();

header('Location: elements.php');
exit();
}





if (login_check($mysqli) == true): ?>

<p>Use the form to add a new element to the database</p>

<form method = "POST" name="elementFrom">
	<label for "element">Element<input type="text" name ="element" id="element" required>
	<input type="submit" name="submit">
</form>

<?php else : ?>

<p><span class="error">You are not authorized to access this page.</span> Please <a href="index.php">login</a>.</p>

<?php endif; ?>



