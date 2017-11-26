<?php
include_once 'inc/db_connect.php';
include_once 'inc/functions.php';
include_once 'inc/classes/Class_Game.php';
sec_session_start();
echo "New Game Added!";
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

<?php 
if (isset($_SESSION['name']))
	{
    $name = $_SESSION['name'];
    $playerNum = $_SESSION['playNum'];
    $userid = $_SESSION['user_id'];

    $game = new Game($name, $playerNum, $userid, $pdo);
    echo 'the game\'s id is: ' .$game->get_gameid(); 
	}

else
	{
		header('Location: main.php?error=1');
	}

    ?>        <p>Add the players for the game with the name: <strong><?php echo $name; ?></strong></p>



            <form name="addData" action="" method="POST">
               <label for ="playerName">Player Name</label><input type="text" name="playerName" id="playerName" value=""><br/>

               <label for="str"> Strength</label><input type="number" name="str" id="str" value=""><br/>
               <label for="dex"> Dexterity</label><input type="number" name="dex" id="dex" value=""><br/>
               <label for="int"> Intelligence</label><input type="number" name="int" id="int" value=""><br/>
               <label for="fai"> Faith</label><input type="number" name="fai" id="fai" value=""><br/>
               <label for="health"> Health</label><input type="number" name="health" id="health" value=""><br/>
               <label for="stam"> Stamina</label><input type="number" name="stam" id="stam" value=""><br/>

               <label for="estus"> Estus Available</label><input type="checkbox" name="estus" value="estus" id="estus"><br>
               <label for="ember"> Ember Available</label><input type="checkbox" name="ember" value="ember" id="ember"><br>
               <label for="heroic"> Heroic Action Available</label><input type="checkbox" name="heroic" value="heroic" id="heroic"><br>
               <label for="luck"> Luck Coin Available</label><input type="checkbox" name="luck" value="luck" id="luck"><br>

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