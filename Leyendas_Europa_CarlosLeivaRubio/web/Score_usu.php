<?php 
    //conexion a la base de datos
    include './conDB.php';

    if ($conexion ->connect_error){
        die("Error en la conexion: "+$conexion->connect_error);
    }else{
        //Conexión correcta
        //Creamos la consulta SQL
        $sql = "INSERT INTO usuario(`nombre_usuario`, `score`) VALUES ('".$_GET['nomUsu']."','".$_GET['score']."')"; 
        //Ejecutamos la consulta
        $resultado = $conexion ->query($sql);
    }
    //Cerramos la conexion a la base de datos
    $conexion->close();
?>