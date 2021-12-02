<h3 class="mt-5"> Proveedores </h3>
<div class = "row mt-1 mb-3">    
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered first">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>RUC</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Fecha registro</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php                        
                        $query = sqlsrv_query($connSqlServer, "EXEC readProveedores");
                        if($query === false){
                            die(print_r(sqlsrv_errors(), true));
                        }
                        while($row = sqlsrv_fetch_array($query, SQLSRV_FETCH_ASSOC)){
  
                    ?>  
                    <tr>
                        <td><?php echo $row["idProveedor"]; ?></td>
                        <td><?php echo $row["nombreProveedor"]; ?></td>
                        <td><?php echo $row["RUCProveedor"]; ?></td>
                        <td><?php echo $row["direccionProveedor"]; ?></td>
                        <td><?php echo $row["TelefonoProveedor"]; ?></td>        
                        <td><?php echo $row["FechaRegistro"]->format('d/m/Y'); ?></td>
                        <td><?php echo $row["EstadoProveedor"]; ?></td>
                        <td>
                            <a href="ms_delete.php?id=<?php echo $row['idProveedor']; ?>" action=del name=delete>
                                <span class="icon-circle-small icon-box-xs text-danger ml-4 bg-danger-light"><i class="fa fa-fw fa-arrow-down"></i>
                            </a>  
                            <a href="ms_update.php?id=<?php echo $row['idProveedor']; ?>" action=edit name=edit>
                                <span class="icon-circle-small icon-box-xs text-success ml-4 bg-success-light"><i class="fa fa-fw fa-arrow-up"></i>
                            </a>
                        </td>                                                
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>