<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Los Pollos Hermanos</title>

    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="header-area">
            <div class="logo-area">
                <div class="logo">
                    <a href="#" title="Logo">
                        <img src="./images/pollos-logo-2-new.png" alt="Restaurant Logo" class="img-responsive logo-img">
                    </a>               
                </div>
                <div class="menu menu-text-right">
                    <ul>
                        <li>
                            <a href="<?php echo SITEURL; ?>">Início</a>
                        </li>
                        <li>
                            <a href="<?php echo SITEURL; ?>categories.php">Categorias</a>
                        </li>
                        <li>
                            <a href="<?php echo SITEURL; ?>foods.php">Menu</a>
                        </li>
                    </ul>
                </div>
            </div>

            
            <section class="food-search text-center">
                <div class="container-search">
                    
                    <form action="<?php echo SITEURL; ?>food-search.php" method="POST" class="food-search-form">
                        <input type="search" name="search" placeholder="Pesquise em nosso menu..." required>
                        <input type="submit" name="submit" value="Pesquisar" class="btn btn-primary">
                    </form>

                </div>
            </section>



            <!-- <div class="clearfix"></div> -->
        </div>
    </section>
    <div class="header-subline"></div>
    <!-- Navbar Section Ends Here -->