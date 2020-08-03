# Usage
## Database
Host name must be the same as mariadb service name, in this case `db`.
```php
// Example
<?php
$host       = "db";
$username   = "my_username";    //could be set in docker-compose.yml
$password   = "my_password";    //could be set in docker-compose.yml
$db         = "teste";          //could be set in docker-compose.yml
try {
    $conn = new PDO("mysql:host=$host;dbname=$db", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<h2>User '$username' successfully connected.<h2>";
} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}
?>
```
# Todos
- remove files in src folder
- ~~add mysql volumes~~
- ~~add nginx log volume~~
- ~~add adminer~~
- better read me