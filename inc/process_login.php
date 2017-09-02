<?php
include_once 'db_connect.php'; 
include_once 'functions.php';
 
sec_session_start(); // Our custom secure way of starting a PHP session.
 //REMEMBER: 'P' is created in forms.js
if (isset($_POST['email'], $_POST['p'])) {
    $email = $_POST['email'];
    $password = $_POST['p']; // The hashed password.
    //echo $password;
 
    if (login($email, $password, $pdo) == true) {
        // Login success 
        header('Location: ../login_success.php');
    } else {
        // Login failed 
        header('Location: ../index.php?error=1');
    }
   /* echo $email;
    echo $password;*/
} else {
    // The correct POST variables were not sent to this page. 
    echo 'Invalid Request';
}