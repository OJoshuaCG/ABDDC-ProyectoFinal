<?php
include "my_con.php";

if (isset($_POST['submit'])) {
    $nombre = $_POST['nombreProveedor'];
    $ruc = $_POST['RUCProveedor'];
    $direccion = $_POST['direccionProveedor'];
    $tel = $_POST['TelefonoProveedor'];
    
    $query = "CALL createProveedores ('$nombre', '$ruc', '$direccion', '$tel');";   

    $result = mysqli_query($connMySql, $query);
    if(!$result){
        echo mysqli_error($connMySql);
        die("Query Failed");
    }
    
    header('Location: my_index.php');
}

?>
<!-- form CREATE  -->
<h3 class="mt-5">
    Ingresar proveedor
</h3>

<div class="col-md-4 mt-1 mb-3">
    <div class="card">
        <div class="card-body">
            <form action="my_create.php" method="post">
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
                        min=9 max=10 
                        pattern="[0-9]{10}"
                    >
                </div>                
                <button type="submit" name="submit" class="btn btn-primary">
                    Guardar Proveedor
                </button>
            </form>
        </div>
    </div>
</div>


