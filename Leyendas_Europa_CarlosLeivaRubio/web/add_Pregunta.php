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
                <div class="contenedor-preg">Añadir leyenda</div>
                <div class="form-add">
                <form method='POST' enctype="multipart/formdata" action='add_Pregunta2.php'>
                    <p>Enunciado: <input type='text' name='enunciado'></p>
                    <p>Respuesta1: <input type='text' name='respuesta1'></p>
                    <p>Respuesta2: <input type='text' name='respuesta2'></p>
                    <p>Respuesta3: <input type='text' name='respuesta3'></p>
                    <p><input type='submit' value='Guardar' name='comprobarinsertar'></p>
                </form>
                </div>
            </div>
        </div>
    
    </body>
</html>