<?php //include('include/header.php'); ?>
<?php include("includes/connection.php"); ?>


<?php //include("includes/connection.php"); ?>
<?php 
if(isset($_POST['login'])) {
	$username=$_POST['username'];
	$password=$_POST['password'];

$getquery=mysqli_query($conn, "SELECT * FROM adminlogin WHERE AdminUsername='$username' AND AdminPassword='$password'");
echo "yes";





/*if (mysqli_num_rows($getquery)>0) {
	$getdata=mysqli_fetch_array($getquery);
	$_SESSION['AdminID']=$getdata['AdminID'];

	if (isset($_SESSION['AdminID'])) {
		echo "$_SESSION";
	}
}
	//echo $password;
else{
	echo "lol";
}*/
}

?>



<!DOCTYPE html>
<html>
<head>
	<title>QUIZ SOFTWARE :: IBADAN CITY POLYTECHNIC</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<div class="background-page"> <br>
		<center>
		<h3>Design and Implementation of Web Based Quiz System</h3>

			<div class="login-div">
			<img src="img/logo.jpg" class="logo-front-div">
				<input id="username" type="text" name="AdminUsername" placeholder="Username"> <br>
				<input id="password" type="password" name="AdminPassword" placeholder="Password"> <br>
				<input id="login" type="submit" name="login" value="Login"> <!-- name="login" id="login" class="login-button-div">Login</button> -->
			</div>

		</center>
	</div>
	<p></p>
</body>
</html>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>

<script>
	
</script>



