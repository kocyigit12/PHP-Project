<?php
session_start();

$id = $_SESSION["uid"];/* userid of the user */
$host='localhost';
    $username='root';
    $pass='';
    $db='amaclone';

    $conn=mysqli_connect($host,$username,$pass,$db);

    if(!$conn) die("Connection refused").mysql_connect_error();

if(count($_POST)>0) {
$result = mysqli_query($conn,"SELECT *from user_info WHERE user_id='" . $id . "'");
$row=mysqli_fetch_array($result);
if(md5($_POST["currentPassword"]) == $row["password"] && $_POST["newPassword"] == $_POST["confirmPassword"] ) {
mysqli_query($conn,"UPDATE user_info set password='" . md5($_POST["newPassword"]) . "' WHERE user_id='" . $id . "'");
$message = "Password Changed Sucessfully";
} else{
 $message = "Password is not correct";
}
}

?>

<!DOCTYPE html>
<html>
<head>
<title>Password Change</title>

</head>
<body>
<h3 align="center">CHANGE PASSWORD</h3>
<div><?php if(isset($message)) { echo $message; } ?></div>
<form method="post" action="" align="center">
Current Password:<br>
<input type="password" name="currentPassword"><span id="currentPassword" class="required"></span>
<br>
New Password:<br>
<input type="password" name="newPassword"><span id="newPassword" class="required"></span>
<br>
Confirm Password:<br>
<input type="password" name="confirmPassword"><span id="confirmPassword" class="required"></span>
<br><br>
<input type="submit">
<a href="products.php">Back </a>
</form>

<br>
<br>
</body>
</html>