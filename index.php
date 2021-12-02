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
                                    <li class="breadcrumb-item active" aria-current="page"><a href="#" class="breadcrumb-link">Inicio</a></li>
                                    <!--<li class="breadcrumb-item active" aria-current="page">Base de Datos Corporativa</li>-->
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="ecommerce-widget">
                <div class="row">
                <div class="m-r-20 m-b-20"><img class=img_logo src="assets/images/database.png" ></div>

                <div>
                    <div> 
                        <a href="ms_index.php" class="btn btn-rounded btn-primary">Enlazar a SQL</a>                                            
                        <a href="my_index.php" class="btn btn-rounded btn-success">Enlazar a Mysql</a>
                    </div>            
                </div>			
            </div>
        </div>

<?php
include "foot.php";
?>