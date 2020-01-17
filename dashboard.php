<?php
session_start();

if(isset($_SESSION["id"])) {
	if(isLoginSessionExpired()) {
		header("Location:logout.php?session_expired=1");
	}
}
if($_SESSION['login'])
{
?><html>
<head>
<title>User Login</title>
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
<table border="0" cellpadding="10" cellspacing="1" width="100%">
<tr class="tableheader">
<td align="center">User Dashboard</td>
</tr>
<tr class="tablerow">
<td>
<p>Welcome : <?php echo $_SESSION['login'];?> | <a href="logout.php">Logout</a> </p>
<p><a href="next.php">User Access log</a></p>
</td>
</tr>
</body></html>
<?php
} else{
header('location:logout.php');
}
?>
<?php function isLoginSessionExpired() {
	$login_session_duration = 10; 
	$current_time = time(); 
	if(isset($_SESSION['loggedin_time']) and isset($_SESSION["id"])){  
		if(((time() - $_SESSION['loggedin_time']) > $login_session_duration)){ 
			return true; 
		} 
	}
	return false;
}?>