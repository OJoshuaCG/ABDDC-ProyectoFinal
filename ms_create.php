<?php
include "ms_con.php"; 

if (isset($_POST['submit'])) {
    $nombre = $_POST['nombreProveedor'];
    $ruc = $_POST['RUCProveedor'];
    $direccion = $_POST['direccionProveedor'];
    $tel = $_POST['TelefonoProveedor'];
    
    $params = array($nombre, $ruc, $direccion, $tel);
    $query = "EXEC createProveedores ?, ?, ?, ?";
    $stmt = sqlsrv_query($connSqlServer, $query, $params);
    
    if(!$stmt){
        echo ("Query Failed");
        die(print_r(sqlsrv_errors(), true));
    }

    sqlsrv_free_stmt($stmt);  
    sqlsrv_close($connSqlServer);  
    
    header('Location: ms_index.php');
}
?>

<h3 class="mt-5">
    Ingresar proveedor
</h3>

<div class="col-md-4 mt-1 mb-3">
    <div class="card">
        <div class="card-body">
            <form action="ms_create.php" method="post">
            <div class="form-group">
                    <input                         
                        type="text" 
                        name="nombreProveedor" 
                        placeholder="Nombre" 
                        class="form-control" 
                    >
                </div>
                <div class="form-group">
                    <input                         
                        type="text" 
                        name="RUCProveedor" 
                        placeholder="RUC" 
                        class="form-control"
                    >
                </div>
                <div class="form-group">
                    <input                         
                        type="text" 
                        name="direccionProveedor" 
                        placeholder="Direccion" 
                        class="form-control"
                    >
                </div>
                <div class="form-group">
                    <input                         
                        type="tel" 
                        name="TelefonoProveedor"
                        placeholder="Telefono" 
                        class="form-control" 
                        min=9 max=9 
                        pattern="[0-9]{9}"
                    >
                </div>               
                <button type="submit" name="submit" class="btn btn-primary">
                    Guardar Proveedor
                </button>
            </form>
        </div>
    </div>
</div>