<?php 
session_start();
$hostuser="localhost";
$hostusername="root";
$hostpassword="";
$hostdb="pelumi";

$conn=mysqli_connect($hostuser, $hostusername,"",$hostdb);
/*if ($conn) {
	echo "Please Check Your DataBase";
}else{
	echo "Success";
}*/

?>