<?php
session_start();
include('config.php');
// Getting  logout time in db
$username=$_SESSION['login']; // hold the user name in session
$uid=$_SESSION['id']; // hold the user id in session

// query for inser user log in to data base
$query=mysqli_query($con,"insert into userlog(userId,username) values('$uid','$username')");
if($query){
session_unset();
//session_destroy();
}
$_SESSION['msg']="You have logged out successfully..!";
?>
<script language="javascript">
document.location="main.php";
</script>
