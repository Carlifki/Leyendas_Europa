<?php
    header("Content-Type: application/json; chaset=UTF-8");
    //conexion a la base de datos
    include './conDB.php';

    //Muestra un error si no se a podido conectar a la base de datos
    if ($conexion ->connect_error){
        die("Error en la conexion: "+$conexion->connect_error);
    }else{
        //Conexión correcta
        
        //Creamos la consulta SQL
        $sql = "SELECT enunciado,respuesta1,respuesta2,respuesta3 FROM pregunta WHERE id_pregunta = '".$_GET['id_pregunta']."'";
        
        //Guardamos el resutado en variables
        $resultado = $conexion ->query($sql);
        if ($resultado = $conexion->query($sql)) {
            while ($row = $resultado->fetch_assoc()) {
                $data1 = $row["enunciado"];
                $data2 = $row["respuesta1"];
                $data3 = $row["respuesta2"];
                $data4 = $row["respuesta3"];
            }
        }
        //Guardamos todo en un objeto
        $salida = array(
            "enunciado" => $data1,
            "respuesta1" => $data2,
            "respuesta2" => $data3,
            "respuesta3" => $data4,
        );
        //Pasamos el objeto a JSON y lo mandamos al Javascript
        echo json_encode($salida);
    }
    //Cerramos la conexion a la base de datos
    $conexion->close();
?>