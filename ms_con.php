<?php
/*
"server": "HP-WJCG\\SQLEXPRESS",
"database": "ProyFinal",
"authenticationType": "Integrated",
"password": ""
*/

$serverSqlServer = "HP-WJCG\SQLEXPRESS"; 
$connectionInfo = array( "Database"=>"ProyFinal");
$connSqlServer = sqlsrv_connect( $serverSqlServer, $connectionInfo);



$img_logo = "assets/images/mssql.png";
$img_offline = "assets/images/offline.png";
$msg = "></div><div><div>";
$conn = false;

if( $connSqlServer ) {
     $msg = $img_logo . $msg . "<h3> Conexión a SQL Server establecida </h3>";
     $conn = true;
     //echo "<h3> Conexión a SQL Server establecida </h3>";
}else{
     $msg = $img_offline . $msg .  "<h3> Conexión a SQL Server FALLIDA </h3>";
     die(print_r(sqlsrv_errors(), true));
     $conn = false;
}

?>

