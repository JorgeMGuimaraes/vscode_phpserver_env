<?php
$host = "mariadb";
$username = "jorge";
$password = "hguyFt6S95dgfR4ryb";
$db = "teste";
try {
    $conn = new PDO("mysql:host=$host", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<h2>Conectado com sucesso.<h2>";
    }
    catch(PDOException $e) {
        echo "ERROR: " . $e->getMessage();
}
?>