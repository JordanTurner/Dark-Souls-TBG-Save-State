<?php
include_once 'inc/db_connect.php';
include_once 'inc/functions.php';
include_once 'inc/classes/Class_Game.php';
sec_session_start();
$name = $_SESSION['name'];
echo $name;

?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Game Data</title>
        <link rel="stylesheet" href="styles/main.css" />
    </head>
    <body>
        <?php 

        if (login_check($pdo) == true) : ?>
            <p>Welcome <?php echo htmlentities($_SESSION['username']); ?>!</p>
            <p>Use the form below to add your new game data</p>

            <form name="addData" action="" method="POST">
               <label for ="name">Name</label><input type="text" name="name" id="name" value=""><br/>
               <label for="playNum"> Number of players</label>
               <select id = "playNum" name = "playNum">
                   <option value="1">1</option>
                   <option value="2">2</option>
                   <option value="3">3</option>
                   <option value="4">4</option>
               </select><br/>
               <input type="submit">
            </form>

            <p>Return to <a href="logout.php">Signout</a></p>
        <?php else : ?>
            <p>
                <span class="error">You are not authorized to access this page.</span> Please <a href="index.php">login</a>.
            </p>
        <?php endif; ?>
    </body>
</html>