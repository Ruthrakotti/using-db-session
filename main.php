<?php
session_start();
error_reporting(0);
include 'config.php';
include'functions.php';
$message="";
if(isset($_POST['submit']))
{
$username=$_POST['user_name']; // Get username
$password=$_POST['password']; // get password
$_SESSION['loggedin_time'] = time();
//query for match  the user inputs
$ret=mysqli_query($con,"SELECT * FROM login WHERE userName='$username'  and password='$password'");
$_SESSION['loggedin_time'] = time();
$num=mysqli_fetch_array($ret);
// if user inputs match if condition will runn
if($num>0)
{
$_SESSION['login']=$username; // hold the user name in session
$_SESSION['id']=$num['id']; // hold the user id in session

// query for inser user log in to data base
mysqli_query($con,"insert into userlog(userId,username) values('".$_SESSION['id']."','".$_SESSION['login']."')");
if(isset($_SESSION["id"])) {
	if(!isLoginSessionExpired()) {
		header("Location:dashboard.php");
	} else {
		header("Location:logout.php?session_expired=1");
	}
}

if(isset($_GET["session_expired"])) {
	$message = "Login Session is Expired. Please Login Again";
}// code redirect the page after login
header("location:http:dashboard.php");
exit();
}
// If the userinput no matched with database else condition will run
else
{
$message = "Invalid Username or Password!";

 }
}
?>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>User login and tracking in PHP using PHP OOPs Concept</title>
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>    
<form name="frmUser" method="post" action="">
<?php if($message!="") { ?>
<div class="message"><?php echo $message; ?></div>
<?php } ?>
<table border="0" cellpadding="10" cellspacing="1" width="100%" class="tblLogin">
<tr class="tableheader">
<td align="center" colspan="2">Enter Login Details</td>
</tr>
<tr class="tablerow">
<td align="right">Username</td>
<td><input type="text" name="user_name"></td>
</tr>
<tr class="tablerow">
<td align="right">Password</td>
<td><input type="password" name="password"></td>
</tr>
<tr class="tableheader">
<td align="center" colspan="2"><input type="submit" name="submit" value="Submit"></td>
</tr>
</table>
</form>
</body></html>

