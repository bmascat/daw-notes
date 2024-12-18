<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid">
		<header class="mb-5">
			<div class="p-5 text-center bg-light" style="margin-top: 58px;">
				<h1 class="mb-3"><?php echo $controller->page_title; ?></h1>
				<h4 class="mb-3">-</h4>
			</div>

			<?php 
                if (SessionManager::iniciarSesion() && isset($_SESSION["userId"])) { 
                 
                    ?>
                    <div class="d-flex  justify-content-end  align-items-center">
                        <div class="d-flex mx-2 align-items-center justify-content-end">
                            <p class="lead">¡Hola <?=$_SESSION["email"]?>!</p>
                        </div>
						<form action="FrontController.php?controller=Usuario&action=logout" method="POST">
							<input type="submit" class="btn btn-primary btn-block" value="Cerrar sesión" name="btnCerrar"></button>                        
						</form>                     
                    </div>
                <?php } ?>
		</header>

