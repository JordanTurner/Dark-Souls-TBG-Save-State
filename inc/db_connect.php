<?php 
/*include_once 'config.php';   // As functions.php is not included
$mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);*/



include_once 'config.php';

$dsn = 'mysql:host='.HOST.';dbname='.DATABASE.';charset='.CHARSET.'';
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, USER, PASSWORD, $opt);
?>