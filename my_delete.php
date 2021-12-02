<?php
include "my_con.php";

if(isset($_GET['id'])){    
    $id = $_GET['id'];

    $query = "CALL deleteProveedores($id)";
    $result = mysqli_query($connMySql, $query);
                           
    if(!$result){
        echo mysqli_error($connMySql);
        die("Cannot Delete");
    }    
}

header('Location: my_index.php');
?>