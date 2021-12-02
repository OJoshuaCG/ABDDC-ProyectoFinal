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
                        mysqli_multi_query ($connMySql, "CALL readProveedores") OR DIE (mysqli_error($connMySql));
                        while (mysqli_more_results($connMySql)){
                            if ($result = mysqli_store_result($connMySql)){
                                while ($row = mysqli_fetch_assoc($result)){                      
                    ?>
                    <tr>
                        <td><?php echo $row["idProveedor"]; ?></td>
                        <td><?php echo $row["nombreProveedor"]; ?></td>
                        <td><?php echo $row["RUCProveedor"]; ?></td>
                        <td><?php echo $row["direccionProveedor"]; ?></td>
                        <td><?php echo $row["TelefonoProveedor"]; ?></td>
                        <td><?php echo $row["FechaRegistro"]; ?></td>
                        <td><?php echo $row["EstadoProveedor"]; ?></td>
                        <td>
                            <a href="my_delete.php?id=<?php echo $row['idProveedor']?>">
                                <span class="icon-circle-small icon-box-xs text-danger ml-4 bg-danger-light"><i class="fa fa-fw fa-arrow-down"></i>
                            </a>  
                            <a href="my_update.php?id=<?php echo $row['idProveedor']?>">
                                <span class="icon-circle-small icon-box-xs text-success ml-4 bg-success-light"><i class="fa fa-fw fa-arrow-up"></i>
                            </a>
                        </td>                                                
                    </tr>
                    <?php
                                }
                                mysqli_free_result($result);
                            }        
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>





