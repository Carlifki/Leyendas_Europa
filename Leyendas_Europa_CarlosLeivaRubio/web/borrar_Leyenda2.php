<?php
include './conDB.php';
$sql = "DELETE FROM leyenda WHERE id_leyenda = '".$_GET['id_leyenda']."';";
$resultado = $conexion ->query($sql);

$conexion->close();
?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="style_admin.css">
    </head>
    <body>
        <?php include 'top.php' ?>

        <div class="overlay" id="overlay">
            <div class="contenedor" id="contenedor">
            <b class="vidas"><a href="admin.php">Volver al inicio</a></b>
                <!-- Contenedor para las preguntas -->
                <div class="contenedor-preg">Leyenda eliminada</div>
                <!-- Contenedor para las respuestas -->
                <div class="contenedor-res">
                <a href=borrar_Leyenda.php><h1>volver al listado<h1></a>
                </div>
            </div>
        </div>
    </body>
</html>