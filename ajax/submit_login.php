<?php include("../includes/connection.php"); ?>
<?php 
if (isset($_POST['login'])) {
	$username=$_POST['username'];
	$password=$_POST['password'];

$getquery=mysqli_query($conn, "SELECT * FROM adminlogin");

if (mysqli_num_rows($getquery)>0) {
	$getdata=mysqli_fetch_array($getquery);
	$_SESSION['AdminID']=$getdata['AdminID'];

	if (isset($_SESSION['AdminID'])) {
		echo "$_SESSION";
	}
}
	//echo $password;
else{
	echo "lol";
}
}

?>