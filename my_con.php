<?php
/*
host": "127.0.0.1",
"dbPath": "proyfinal",
"user": "root",
"password": "",
*/
$serverMySql = "localhost";
$database = "proyfinal";
$username = "root";
$password = "";
$connMySql = mysqli_connect($serverMySql, $username, $password, $database);

$img_logo = "assets/images/mysql.png";
$img_offline = "assets/images/offline.png";
$msg = "></div><div><div>";
$conn = false;

if( $connMySql ) {
     $msg = $img_logo . $msg . "<h3> Conexión a MySQL establecida </h3>";
     $conn = true;
}else{
     $msg = $img_offline . $msg . "<h3> Conexión a MySQL FALLIDA </h3>";
     die(print_r(mysqli_error($connMySql),true));
     //die( print_r( sqlsrv_errors(), true));
     $conn = false;
}

?>






