<?php 
    
    header("Content-Type: application/json; chaset=UTF-8");

    include './conDB.php';
    /* si la conexion falla muestra un error */
    if ($conexion ->connect_error){
        die("Error en la conexion: "+$conexion->connect_error);
    }else{
        //Conexión correcta
        
        //Crea la consulta SQL
        $sql = "SELECT titulo_leyenda,contenido,imagen FROM leyenda WHERE siglas_pais = '".$_GET['siglas_pais']."'";
        //echo $sql; 
        $resultado = $conexion ->query($sql);
        if ($resultado = $conexion->query($sql)) {
            while ($row = $resultado->fetch_assoc()) {
                $data1 = $row["titulo_leyenda"];
                $data2 = $row["contenido"];
                $data3 = $row["imagen"];
            }
        }
        // guarda el resultado en un objeto
        $salida = array(
            "titulo_leyenda" => $data1,
            "contenido" => $data2,
            "imagen" => $data3,
        );
        //convierte el objeto en un JSON
        echo json_encode($salida);
    }
    $conexion->close();
?>
