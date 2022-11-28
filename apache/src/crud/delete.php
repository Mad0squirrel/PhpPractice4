<?php
header("Content-Type: application/json; charset=UTF-8");
if (isset($_GET['type']) && isset($_GET['id'])) {
    $type = $_GET['type'];
    $id = $_GET['id'];
    $mysqli = new mysqli("mysql", "user", "password", "appDB", "3306");
    if ($mysqli->query("DELETE FROM $type WHERE id = $id")) {
        header("Location: http://localhost:8080/admin.php");
    } else {
        echo "Bad request";
    }
} else {
    echo "Bad request";
}