<?php
include "ms_con.php";

if(isset($_GET['id'])){    
    $id = $_GET['id'];       
    $params = array($id);
    $query = "EXEC deleteProveedores ?";
    $stmt = sqlsrv_query($connSqlServer, $query, $params);
                           
    if(!$stmt){
        echo ("Query Failed");
        die(print_r(sqlsrv_errors(), true));
    }

    sqlsrv_free_stmt($stmt);  
    sqlsrv_close($connSqlServer);        
}

header('Location: ms_index.php');
?>