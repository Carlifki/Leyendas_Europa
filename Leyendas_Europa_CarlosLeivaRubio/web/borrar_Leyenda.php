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
                <div class="contenedor-mensaje">Listado leyendas</div>
                    <table>
                        <tr><td>ID</td><td>Pais</td><td class="td-main">Nombre leyenda</td>
                    </table>
                <div class="contenedor-eliminar">
                    <table>
                <?php
                    include("conDB.php");
                    if ($conexion ->connect_error){
                        die("Error en la conexion: "+$conexion->connect_error);
                    }else{
                        //Conexión correcta
                        //Creamos la consulta SQL
                        $sql = "SELECT id_leyenda,siglas_pais,titulo_leyenda FROM leyenda";
                        $resultado = $conexion ->query($sql);
            
                        if ($resultado = $conexion->query($sql)) {
                            while ($row = $resultado->fetch_assoc()) {
                                echo '<tr>';
                                echo '<td>'.$row["id_leyenda"].'</td>';
                                echo '<td>'.$row["siglas_pais"].'</td>';
                                echo '<td class="td-main">'.$row["titulo_leyenda"].'</td>';
                                echo "<td><a href=borrar_Leyenda2.php?id_leyenda=".$row['id_leyenda'].">Borrar<a></td>";
                                //echo '<td>'.$data4.'</td>';
                                echo '</tr>';
                            }
                        }
                        echo "</table>";
                    }
                    mysqli_close($conexion);
                ?>
                </div>
            </div>
        </div>
    
    </body>
</html>