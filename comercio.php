<?php
header('Content-Type: application/json');
header('Cache-Control: no-cache, must-revalidate');
header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');

$servidor = "localhost";
$basedatos = "comercio";
$conexion = mysqli_connect($servidor, '', '', $basedatos); // No se proporciona usuario ni contraseña
mysqli_query($conexion, "SET NAMES 'utf8'");

if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}

if (isset($_POST['opcion'])) {
    $opc = $_POST['opcion'];

    switch ($opc) {
        case "TG":
            $sql = "SELECT * FROM grupos ORDER BY nombre";
            break;
        case "TP":
            $sql = "SELECT * FROM productos ORDER BY idproducto";
            break;
        case "PG":
            $gru = $_POST['grupo'];
            $sql = "SELECT * FROM productos WHERE grupo=(SELECT idgrupo FROM grupos WHERE nombre='$gru')";
            break;
        // Otras opciones aquí...

    }

    $datos = array();
    $resultados = mysqli_query($conexion, $sql) or die(mysqli_error());

    while ($fila = mysqli_fetch_assoc($resultados)) {
        $datos[] = $fila;
    }

    echo json_encode($datos);
}

mysqli_close($conexion);
?>
