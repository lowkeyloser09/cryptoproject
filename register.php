<?php
    session_start();
    include "connection.php";
    if (isset($_POST["submit"])) {
        $user = $_POST["username"];
        $email = $_POST["email"];
        $pass = password_hash($_POST["password"], PASSWORD_BCRYPT);
        $gender = $_POST["gender"];

        $sql = "INSERT INTO users (username, email, password_, gender)
        VALUES ('$user', '$email', '$pass', '$gender')";

        $checkUserStmt = $conn->prepare("SELECT id FROM users WHERE username = ? OR email = ?");
        $checkUserStmt->bind_param("ss", $user, $email);
        $checkUserStmt->execute();
        $checkUserStmt->store_result();

        if ($checkUserStmt->num_rows > 0) {
            echo "Username or email already exists!";
        } else {
            $stmt = $conn->prepare("INSERT INTO users (username, email, password_, gender) VALUES (?, ?, ?, ?)");
            $stmt->bind_param("ssss", $user, $email, $pass, $gender);

            if ($stmt->execute()) {
                echo "Registered Successfully!";
                header("Location: login.php");
            } else {
                echo "Registration Failed! " . $stmt->error;
            }

            $stmt->close();
        }
        $checkUserStmt->close();    
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Register</title>
</head>
<body>
<div class="center">
        <h1 style="color: black; font-weight: 100; font-family: Arial, Helvetica, sans-serif">Sign Up</h1>
    </div>   
    <form action="" method="post" class="form1">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="Username" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Email" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Password">
        <label for="gender">Gender:</label>
        <select name="gender" id="gender">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>

        <br>
        <input type="submit" id="submit" name="submit" value = "Register">
        <a class="link1" href="login.php">Already have an account?</a>
    </form>
</body>
</html>