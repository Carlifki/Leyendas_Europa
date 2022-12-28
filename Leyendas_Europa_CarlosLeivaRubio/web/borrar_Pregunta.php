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
                <div class="contenedor-mensaje">Listado preguntas</div>
                <table>
                        <tr><td>ID</td><td class="td-main">Enunciado</td>
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
                        $sql = "SELECT id_pregunta,enunciado FROM pregunta";
                        $resultado = $conexion ->query($sql);
                        if ($resultado = $conexion->query($sql)) {
                            /* Cada iteraccion del bucle crea una nueva fila hasta que no queden resultados */
                            while ($row = $resultado->fetch_assoc()) {
                                echo '<tr>';
                                echo '<td>'.$row["id_pregunta"].'</td>';
                                echo '<td>'.$row["enunciado"].'</td>';
                                //en cada iteraccion genera el "Borrar" unico de esa columna
                                echo "<td><a href=borrar_Pregunta2.php?id_pregunta=".$row['id_pregunta'].">Borrar<a></td>";
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