<?php
header("Content-Type: application/json; charset=UTF-8");
if (isset($_GET['name']) && isset($_GET['type']) && isset($_GET['id'])) {
    $id = $_GET['id'];
    $name = $_GET['name'];
    $type = $_GET['type'];
    switch ($type) {
        case 'vacancy':
            $salary = $_GET['salary'];
            $mysqli = new mysqli("mysql", "user", "password", "appDB", "3306");
            $result = $mysqli->query("UPDATE $type SET `name` = '$name', salary = '$salary' WHERE id = $id");
            break;
        case 'menu':
            $cost = $_GET['cost'];
            $mysqli = new mysqli("mysql", "user", "password", "appDB", "3306");
            $result = $mysqli->query("UPDATE $type SET `name` = '$name', cost = '$cost' WHERE id = $id");
            break;
    }
    header("Location: http://localhost:8080/admin.php");
} else {
    echo "Bad request";
}