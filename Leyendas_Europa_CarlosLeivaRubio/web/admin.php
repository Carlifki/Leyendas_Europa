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
                <div class="contenedor-preg">Administrar</div>
                <div class="contenedor-res">
                    <a href="add_Leyenda.php"><button class="button-admin">Añadir Leyenda</button></a>
                    <a href="add_Pregunta.php"><button class="button-admin">Añadir Pregunta</button></a>
                    <br>
                    <a href="borrar_Leyenda.php"><button class="button-admin">Eliminar Leyenda</button></a>
                    <a href="borrar_Pregunta.php"><button class="button-admin">Eliminar Pregunta</button></a>
                </div>
            </div>
        </div>
    </body>
</html>