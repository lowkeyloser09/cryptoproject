<?php
    $serverhost = "localhost";
    $username = "root";
    $password = "";
    $dbname = "userdata";

    $conn = new mysqli($serverhost, $username, $password, $dbname);

    if (!$conn) {
        echo "Connection Error!";
    }

?>