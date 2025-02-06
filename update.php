<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
</head>
<body>
<?php 

include "connection.php";

    if (isset($_POST['update'])) {

        $firstname = $_POST['username'];
        $user_id = $_POST['user_id'];
        $email = $_POST['email'];
        $gender = $_POST['gender'];

        $sql = "UPDATE `users` SET `username`='$firstname',
        `email`='$email',`gender`='$gender' WHERE `id`='$user_id'"; 
        $result = $conn->query($sql); 

        if ($result == TRUE) {
            echo "Record updated successfully.";
        }else{
            echo "Error:" . $sql . "<br>" . $conn->error;
        }

    } 

    if (isset($_GET['id'])) {
        $user_id = $_GET['id']; 
        $sql = "SELECT * FROM `users` WHERE `id`='$user_id'";
        $result = $conn->query($sql); 
        if ($result->num_rows > 0) {        
            while ($row = $result->fetch_assoc()) {
                $user = $row['username'];
                $email = $row['email'];
                $gender = $row['gender'];
                $id = $row['id'];
            } 

    ?>
        <h2>User Update Form</h2>

        <form action="" method="post">
          <fieldset>
            <legend>Personal information:</legend>
             Username:<br>
            <input type="text" name="username" value="<?php echo $user; ?>">
            <input type="hidden" name="user_id" value="<?php echo $id; ?>">
            <br>
            <br>Email:<br>
            <input type="email" name="email" value="<?php echo $email; ?>">
            <br>
            Gender:<br>
            <select name="gender" id="select">
                <option value="Male" <?php if($gender == 'Male'){ echo "checked";} ?>>Male</option>
                <option value="Female" <?php if($gender == 'Female'){ echo "checked";} ?>>Female</option>
            </select>
            <br><br>

            <input type="submit" value="Update" name="update">
          </fieldset>
        </form> 
        </body>
        </html> 
    <?php

    } else{ 
        header('Location: read.php');
    } 
}

?> 
</body>
</html>