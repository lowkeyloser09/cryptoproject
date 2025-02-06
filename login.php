<?php
    session_start();
    include "connection.php"; 

    $error_msg = "";

   
    if (isset($_POST["login"])) {
        $email = $_POST["email"];
        $pass = $_POST["password"];

        $stmt = $conn->prepare("SELECT id, password_ FROM users WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $stmt->bind_result($id, $hashed_password);
            $stmt->fetch();

            if (password_verify($pass, $hashed_password)) {
                $_SESSION['loggedin'] = true;
                $_SESSION['user_id'] = $id;

                header("Location: index.php");
                exit();
                 
            } else {
                $error_msg = "Invalid email or password!";
            }
        } else {
            $error_msg = "Invalid email or password!";
        }

        $stmt->close();

    }

    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Log In</title>
</head>
<body style = "background-color: black;">
    <div class="center">
        <h1 style="color: white; font-weight: 100; font-family: Arial, Helvetica, sans-serif">Sign in</h1>
    </div>    
    <form action="" method="post" class="form2">
        <label for="email" style = "color: white;">Email:</label>
        <input type="email" id="email2" name="email" required> <br><br>
        <label for="password" style = "color: white;">Password:</label>
        <input type="password" id="password2" name="password" required> <br><br>
        <input type="submit" id="submit2" name="login" value="Log In"> <br><br>
        <a class="link1" href="register.php" style = "color: #1F6FEB;">Create an Account</a>
        <?php if (!empty($error_msg)): ?>
            <div class="error-container"><?php echo $error_msg; ?></div>
        <?php endif; ?> 
    </form>
</body>
</html>
