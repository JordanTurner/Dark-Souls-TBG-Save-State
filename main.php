<?php
include_once 'inc/db_connect.php';
include_once 'inc/functions.php';
include_once 'inc/classes/Class_Game.php';
sec_session_start();

if(isset($_POST['name'])){
    $_SESSION['name'] = $_POST['name'];
    $_SESSION['playNum'] = $_POST['playNum'];
    header('Location:main.php');
    exit();
}

if(isset($_SESSION['name'])){

    $name = $_SESSION['name'];
    $playerNum = $_SESSION['playNum'];
    $userid = $_SESSION['user_id'];

    $game = new Game($name, $playerNum, $userid, $pdo);
    //echo "The game name is: " . $game->get_name() . ' it has '. $game->get_playerNum() . '  players and the userid it is assigned to is '. $game->get_userid() .' <br/>';   
    if($game->createGame() == true)
        {
            echo $message;

            unset($_SESSION['name']);
            unset($_SESSION['playNum']); 
            header('Location: add_new_game.php');
            exit();
        }
    else
        {
            echo "A game with that name is already registered to your account. Please try again";
            unset($_SESSION['name']);
            unset($_SESSION['playNum']); 
        }
   



 
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
            <p>Use the form below to add a new game</p>

            <form name="addNewGame" action="" method="POST">
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