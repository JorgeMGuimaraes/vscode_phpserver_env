<?php
$host = "db";
$username = "jorge";
$password = "hguyFt6S95dgfR4ryb";
$db = "teste";
try {
    $conn = new PDO("mysql:host=$host;dbname=$db", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<h2>User '$username' Conectado com sucesso.<h2>";
} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}
?>