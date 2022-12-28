<?php
    /* Inicia la conexion con la base de datos */
    include "./conDB.php";
    /*Guarda los datos recibidos del formulario en variables */
    $enunciado = $_POST["enunciado"];
    $respuesta1 = $_POST["respuesta1"];
    $respuesta2 = $_POST["respuesta2"];
    $respuesta3 = $_POST["respuesta3"];
    //Crea la sentencia sql
    $sql = "INSERT INTO pregunta(`enunciado`, `respuesta1`, `respuesta2`, `respuesta3`)
    VALUES ('".$enunciado."','".$respuesta1."','".$respuesta2."','".$respuesta3."')";
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
                <div class="contenedor-preg">Pregunta añadida</div>
                <!-- Contenedor para las respuestas -->
                <div class="contenedor-res">
                <a href=add_Pregunta.php><h1>Añadir otra pregunta<h1></a>
                </div>
            </div>
        </div>
    </body>
</html>