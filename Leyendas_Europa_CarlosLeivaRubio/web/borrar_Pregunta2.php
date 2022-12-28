<?php
/* Inicia la conexion con la base de datos */
include './conDB.php';
//Crea la sentencia sql
$sql = "DELETE FROM pregunta WHERE id_pregunta = '".$_GET['id_pregunta']."';";
echo $sql;
//Ejecuta la sentencia
$resultado = $conexion ->query($sql);
//Cierra la conexion
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
                <div class="contenedor-preg">Pregunta eliminada</div>s
                <!-- Contenedor para las respuestas -->
                <div class="contenedor-res">
                <a href=borrar_Pregunta.php><h1>volver al listado<h1></a>
                </div>
            </div>
        </div>
    </body>
</html>