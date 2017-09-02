<?php
include_once 'inc/db_connect.php';
include_once 'inc/functions.php';
 
sec_session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Main Page</title>
        <link rel="stylesheet" href="styles/main.css" />
    </head>
    <body>
        <?php 

        if (login_check($pdo) == true) : ?>
            <p>Welcome <?php echo htmlentities($_SESSION['username']); ?>!</p>
            <p>
                <a href="elements.php">Add New Element</a>
            </p>
            <p>Return to <a href="logout.php">Signout</a></p>
        <?php else : ?>
            <p>
                <span class="error">You are not authorized to access this page.</span> Please <a href="index.php">login</a>.
            </p>
        <?php endif; ?>
    </body>
</html>