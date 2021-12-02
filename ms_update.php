<?php
include "ms_con.php";

if(isset($_POST['update'])){
    $id = $_GET['id'];
    $nombre = $_POST['nombre'];
    $ruc = $_POST['ruc'];
    $direccion = $_POST['direccion'];
    $tel = $_POST['telefono'];
    
    $params = array($id, $nombre, $ruc, $direccion, $tel);
    $query = "EXEC updateProveedores ?, ?, ?, ?, ?";
    $stmt = sqlsrv_query($connSqlServer, $query, $params);
    
    if(!$stmt){
        echo ("Query Failed");
        die(print_r(sqlsrv_errors(), true));
    }

    sqlsrv_free_stmt($stmt);  
    sqlsrv_close($connSqlServer);  
    
    header('Location: ms_index.php');    
}

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $params = array($id);
    $query = "EXEC editProveedores ?";
    $stmt = sqlsrv_query($connSqlServer, $query, $params);
    if($stmt){
        $row = sqlsrv_fetch_array($stmt);
        $nom = $row['nombreProveedor'];
        $ruc = $row['RUCProveedor'];
        $dir = $row['direccionProveedor'];
        $tel = $row['TelefonoProveedor'];
    }
    else{
        echo ("Query Failed");
        die(print_r(sqlsrv_errors(), true));
    }

    sqlsrv_free_stmt($stmt);  
    sqlsrv_close($connSqlServer);        
}
?>


<?php 
include "encabezado.php";
include "left.php";
?>

<div class="dashboard-wrapper">
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="page-header">
                        <h2 class="pageheader-title">Base de Datos Avanzada Corporativa </h2>
                        
                        <div class="page-breadcrumb">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.php" class="breadcrumb-link">Inicio</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Editar</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

<h3 class="mt-5">
    Editar proveedor
</h3>

<div class="col-md-4 mt-1 mb-3">
    <div class="card">
        <div class="card-body">
            <form action="ms_update.php?id=<?php echo $_GET['id'];?>" method="POST">
                <div class="form-group">
                    <input                         
                        type="text" 
                        name="nombre" 
                        placeholder="Nombre"
                        value=<?php echo $nom?>                         
                        class="form-control" 
                        required
                    >
                </div>
                <div class="form-group">
                    <input                         
                        type="text" 
                        name="ruc" 
                        placeholder="RUC" 
                        value=<?php echo $ruc?>
                        class="form-control"
                        required
                    >
                </div>
                <div class="form-group">
                    <input                         
                        type="text" 
                        name="direccion" 
                        placeholder="Direccion" 
                        value=<?php echo $dir?>
                        class="form-control"
                        required
                    >
                </div>
                <div class="form-group">
                    <input                         
                        type="tel" 
                        name="telefono"
                        placeholder="Telefono"
                        value=<?php echo $tel?> 
                        class="form-control" 
                        min=9 max=9 
                        pattern="[0-9]{9}"
                        required
                    >
                </div>                
                <button type="submit" name="update" class="btn btn-primary">
                    Actualizar Proveedor
                </button>
            </form>
        </div>
    </div>
</div>

<?php
include "foot.php";
?>