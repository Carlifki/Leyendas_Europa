<?php
    include "./conDB.php";
    $siglas_pais = $_POST["siglas_pais"];
    $titulo_leyenda = $_POST["titulo_leyenda"];
    $siglas_pais = $_POST["siglas_pais"];
    $contenido = $_POST["contenido"];
    $imagen = $_POST["imagen"];
    echo $imagen;

    $sql = "INSERT INTO leyenda(`siglas_pais`, `titulo_leyenda`, `contenido`, `imagen`) 
    VALUES ('".$siglas_pais."','".$titulo_leyenda."','".$contenido."','".$imagen."')";
    $resultado = $conexion ->query($sql);

    if (is_uploaded_file ($_FILES['imagen']['tmp_name'])){
        $filename=$_FILES['imagen']['name'];
        echo $filename + " | ";
        $ext = substr($filename, strrpos($filename, '.') + 1);
        echo $ext;
	    $nombreDirectorio = "html/img/";
	    //$nombreFichero = $_FILES['imagen']['name'];
	    $nombreFichero=$imagen;
	    $nombreFichero_ext="$nombreFichero.$ext";
	    $nombreCompleto = $nombreDirectorio . $nombreFichero_ext;
	    if (is_file($nombreCompleto)){
		    $idUnico = time();
		    $nombreFichero = $idUnico . "-" . $nombreFichero_ext;
	    }
	    move_uploaded_file ($_FILES['imagen']['tmp_name'],
	    $nombreDirectorio . $nombreFichero_ext);
	    //print ("Fichero $nombreFichero_ext subido.\n");
        }
    else{
        print ("No se ha podido subir el fichero\n");
    }
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
                <div class="contenedor-preg">Leyenda añadida</div>
                <!-- Contenedor para las respuestas -->
                <div class="contenedor-res">
                <a href=add_Leyenda.php><h1>Añadir otra leyenda<h1></a>
                </div>
            </div>
        </div>
    </body>
</html>