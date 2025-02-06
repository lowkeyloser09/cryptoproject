<?php
    session_start();
    if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
        header("Location: login.php");
        exit();
    }
    include "connection.php";

    $name = $_POST["name"] ?? '';
    $price = $_POST["price"] ?? 0;
    $hchange = $_POST["hchange"] ?? 0;
    $twhchange = $_POST["twhchange"] ?? 0;
    $sdchange = $_POST["sdchange"] ?? 0;
    $marketcap = $_POST["marketcap"] ?? 0;
    $volume = $_POST["volume"] ?? 0;
    if(isset($_POST["submit"])) {

        $add = "INSERT INTO current_prices VALUES (DEFAULT, '$name', '$price', '$hchange', '$twhchange', '$sdchange', '$marketcap', '$volume');";
        $result = $conn->query($add);

        if ($result === TRUE) {
            echo "Inserted Successfully!";
            header("Location: index.php");
            exit();
        } else {
            die("Failed to Insert");
        }
    }

    if (isset($_POST["back"])) {
        header("Location: index.php");
        exit();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylemain.css">
    <title>Document</title>
    <style>
        #submit:hover {
            cursor: pointer;
        }
        #back {
            cursor: pointer;
            background-color: blue;
        }
    </style>
</head>
<body>
<table id="currentPricesTable">
        <thead>
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>1h %</th>
                <th>24h %</th>
                <th>7d %</th>
                <th>Market Cap</th>
                <th>Volume (24h)</th>
                <th><a href="index.php" style="text-decoration:wavy; color: #1F6FCA;">Back</a></th>
            </tr>
        </thead>
        <tbody>
            <form action="insert.php" method="post">
                <tr>
                    <td><input type="text" name="name" id="name" style="border-radius: 5px; text-indent: 3px; padding: 5px;" placeholder="Crypto Name" required></td>
                    <td><input type="number" step="0.01" min="0" placeholder="Enter price" name="price" style="border-radius: 5px; text-indent: 3px; padding: 5px;" required></td>
                    <td><input type="number" step="0.01" min="0" placeholder="1h Change" name="hchange" style="border-radius: 5px; text-indent: 3px; padding: 5px;" required></td>
                    <td><input type="number" step="0.01" min="0" placeholder="24h Change" name="twhchange" style="border-radius: 5px; text-indent: 3px; padding: 5px;" required></td>
                    <td><input type="number" step="0.01" min="0" placeholder="7d Change" name="sdchange" style="border-radius: 5px; text-indent: 3px; padding: 5px;" required></td>
                    <td><input type="number" step="50" min="0" placeholder="Market Cap" name="marketcap" style="border-radius: 5px; text-indent: 3px; padding: 5px;" required></td>
                    <td><input type="number" step="500" min="0" placeholder="Volume (24h)" name="volume" style="border-radius: 5px; text-indent: 3px; padding: 5px;" required></td>
                    <td><input type="submit" name="submit" value="Insert" id="submit" style="background-color: red; color: white; border-radius: 5px; padding: 10px;"></td>
                </tr>
            </form>    
        </tbody>
    </table>
</body>
</html>