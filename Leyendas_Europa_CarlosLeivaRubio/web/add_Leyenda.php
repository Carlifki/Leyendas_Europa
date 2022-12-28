<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="style_admin.css">
        <title>Añadir leyenda</title>
    </head>
    <body>
        <?php include 'top.php' ?>

        <div class="overlay" id="overlay">
            <div class="contenedor" id="contenedor">
            <b class="vidas"><a href="admin.php">Volver al inicio</a></b>
                <div class="contenedor-mensaje">Añadir leyenda</div>
                <div class="form-add">
                    <form method='POST' enctype="multipart/form-data" action='add_Leyenda2.php'>
                    <p>
                        Siglas pais: <select name='siglas_pais' id="siglas_pais">
                        <?php
                            include "conDB.php";
                            $sql = "SELECT siglas_pais FROM pais";
                            //echo $sql; 
                            $resultado = $conexion ->query($sql);
                            if ($resultado = $conexion->query($sql)) {
                                while ($row = $resultado->fetch_assoc()) {
                                    echo "<option>".$row["siglas_pais"]."</option>";                           
                                }
                            }
                            $conexion->close();
                        ?>
                        </select>
                    </p>
                    <p>Titulo: <input type='text' name='titulo_leyenda'></p>
                    <p>Historia</p>
                    <p><textarea cols="80" rows="5" name='contenido'></textarea></p>
                    <p>imagen: <input type="file" name="imagen" /></p>
                    <p><input type='submit' value='Guardar' name='comprobarinsertar'></p>
                </form>
                </div>
            </div>
        </div>
    
    </body>
</html>