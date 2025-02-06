<?php
    include "connection.php";
    $sql = "SELECT * FROM users";
    $result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>View</title>
</head>
<body>
    <div class ="container">
        <h2>Users</h2>
        <table class ="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if($result->num_rows>0) {
                        while($rows = $result->fetch_assoc()) { ?>
                        <tr>
                            <td>
                                <?php echo $rows["id"];?>
                            </td>
                            <td>
                                <?php echo $rows["username"];?>
                            </td>
                            <td>
                                <?php echo $rows["email"];?>
                            </td>
                            <td>
                                <?php echo $rows["gender"];?>
                            </td>
                            <td>
                                <?php echo $rows["password_"]; ?>
                            </td>
                            <td>
                                <a class ="btn btn-info" href ="update.php?id=<?php echo $rows["id"];?>">Edit</a>
                                <a class ="btn btn-danger" href ="delete.php?id=<?php echo $rows["id"];?>">Delete</a>
                            </td>
                        </tr>
                        <?php }
                    } 
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>