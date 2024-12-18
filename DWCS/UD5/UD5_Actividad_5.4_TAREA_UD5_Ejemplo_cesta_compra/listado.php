<?php
session_start();
if (!isset($_SESSION['nombre'])) {
    header('Location:login.php');
}
require_once 'conexion.php';
$consulta = "select id, nombre, pvp from productos order by nombre";
$stmt = $conProyecto->prepare($consulta);
try {
    $stmt->execute();
} catch (PDOException $ex) {
    cerrarTodo($conProyecto, $stmt);
    die("Error al recuperar los productos " . $ex->getMessage());
}
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- css para usar Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- css Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <title>Cesta de la compra</title>
</head>
<?php
if (isset($_POST['vaciar'])) {
    unset($_SESSION['cesta']);
}
if (isset($_POST['comprar'])&&isset($_POST["unidades"])) {
    $datos = consultarProducto($_POST['id']);
    if ($datos !== false) {
        
        if(!isset($_SESSION['cesta'][$datos->id])){
            $_SESSION['cesta'][$datos->id] = $_POST["unidades"];
        }else{
            $_SESSION['cesta'][$datos->id] += $_POST["unidades"];
        }

        $countFamilia = (!isset($_COOKIE['familia'])) ? 0 : count($_COOKIE['familia']);
        
        if (!isset($_COOKIE['familia'])) {
            setcookie("familia[$countFamilia]", $datos->familia, time() + 2500000);
        } else {
            $existe = in_array($datos->familia, $_COOKIE['familia'], true);

            if (!$existe) {
                setcookie("familia[$countFamilia]", $datos->familia, time() + 2500000);
            }
        }

    }
}
?>

<body style="background: gray">
    <?php require_once 'header.php';?>
    <br>
    <h4 class="container text-center mt-4 font-weight-bold">Tienda onLine</h4>
    <div class="container mt-3">
        <form class="form-inline" name="vaciar" method="POST" action='<?php echo $_SERVER['PHP_SELF']; ?>'>
            <a href="cesta.php" class="btn btn-success mr-2">Ir a Cesta</a>
            <input type='submit' value='Vaciar Carro' class="btn btn-danger" name="vaciar">
        </form>
        <table class="table table-striped table-dark mt-3">
            <thead>
                <tr class="text-center">
                    <th scope="col">Añadir</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Unidades</th>
                    <th scope="col">Añadido</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($filas = $stmt->fetch(PDO::FETCH_OBJ)) {
                    echo "<tr><th scope='row' class='text-center'>";
                    echo "<form id ='addProductForm{$filas->id}' action='{$_SERVER['PHP_SELF']}' method='POST'>";
                    echo "<input type='hidden' name='id' value='{$filas->id}'>";
                    echo "<input type='submit' class='btn btn-primary' name='comprar' value='Añadir'>";
                    echo "</form>";
                    echo "</th>";
                    echo "<td>{$filas->nombre}, Precio: {$filas->pvp} (€)</td>";
                    echo "<td><input form = 'addProductForm{$filas->id}' type='number' name ='unidades' value='1' min ='1' max = '3'></td>";
                    echo "<td class='text-center'>";
                    if (isset($_SESSION['cesta'][$filas->id])) {
                        echo "<i class='fas fa-check fa-2x'></i>";
                    } else {
                        echo "<i class='far fa-times-circle fa-2x'></i>";
                    }
                    echo "<td>";
                    echo "</tr>";

                }
                cerrarTodo($conProyecto, $stmt);
                ?>
            </tbody>
        </table>

    </div>
</body>

</html>