<html lang="en">
<head>
    <title>Товары</title>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
<h1>Товары</h1>
<table>
    <tr>
        <th>Название</th>
        <th>Коллекция</th>
        <th>Цена</th>
    </tr>
    <?php include_once 'mySQLConnection.php';
    $mysqli = connectToDB();
    $result = $mysqli->query(/** @lang MySQL */ "SELECT * FROM menu");
    foreach ($result as $row) {
        echo "<tr><td>{$row['name']}</td><td>{$row['collection']}</td><td>{$row['cost']}</td></tr>";
    }
    $mysqli->close();
    ?>
</table>
</body>
</html>
