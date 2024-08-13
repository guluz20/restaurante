<?php 

    include('../config/constants.php'); 
    include('login-check.php');

?>


<html>
    <head>
        <title>Restaurante - Dashboard</title>

        <link rel="stylesheet" href="../css/admin.css">
    </head>
    
    <body>
        <!-- Menu Section Starts -->
        <div class="menu text-center">
            <div class="wrapper">
                <ul>
                    <li><a href="index.php">Início</a></li>
                    <li><a href="manage-admin.php">Área de Administrador</a></li>
                    <li><a href="manage-category.php">Categorias</a></li>
                    <li><a href="manage-food.php">Menu</a></li>
                    <li><a href="manage-order.php">Pedidos</a></li>
                    <li><a href="logout.php">Deslogar-se</a></li>
                </ul>
            </div>
        </div>
        <!-- Menu Section Ends -->