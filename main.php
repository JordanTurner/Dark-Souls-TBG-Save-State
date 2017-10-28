<?php
include_once 'inc/db_connect.php';
include_once 'inc/functions.php';
include_once 'inc/classes/Equip_Class.php';
sec_session_start();

if(isset($_POST['equip'])){
    $_SESSION['equip'] = $_POST['equip'];
    header('Location:main.php');
    exit();
}

if(isset($_SESSION['equip'])){


    $equip = new Equipment();
}
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
            <p>Use the form below to add new equipment to the database</p>

            <form name="addEquip" action="" method="POST">
               <label for="equip"> Equipment Name</label><input type ="text" value="" id="equip" name="equip">
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