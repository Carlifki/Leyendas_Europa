<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="style_quiz.css">
    </head>
    <body>
        <?php include 'top.php' ?>

        <div class="overlay" id="overlay">
            <div class="contenedor" id="contenedor">
            <b class="vidas" hidden>Vidas: <i class="num-vidas">3</i></b>
            <b class="score" hidden>Puntos: <i class="num-score">0</i></b>
                <!-- Contenedor para las preguntas -->
                <div class="contenedor-preg">Veamos cuanto sabes sobre los mitos del mundo</div>
                <!-- Contenedor para las respuestas -->
                <div class="contenedor-res">
                    <button class="button-quiz">Iniciar Quiz</button>
                    <button class="button-score">Mejores Puntuaciones</button>
                    <!-- Botones de las respuestas -->
                    <p><button class="button-quiz-respuesta" hidden></button></p>
                    <p><button class="button-quiz-respuesta" hidden></button></p>
                    <p><button class="button-quiz-respuesta" hidden></button></p>
                    <!-- Formulario para guardar la puntuacion -->
                    <form method='GET' class="registro" hidden>
                        <h2>Elige un nombre para guardar tu puntuación</h2>
                        <table align='center'>
                            <tr>
                                <td><h3>Nombre:</h3></td>
                                <td><input name='usuario' type='Text' class="nomUsu"></td>
                                <td><button type="button" class="botonRegistro">Guardar</button></td>
                            </tr>
                        </table>
                    </form>
                    <!-- Tabla de mejores puntuaciones -->
                    <table align='center' class="scoreTabla" hidden>
                        <?php
                        include './conDB.php';
                        $sql = "SELECT nombre_usuario,score FROM usuario ORDER BY score DESC LIMIT 6";
                        //echo $sql; 
                        $resultado = $conexion ->query($sql);

                        
                        if ($resultado = $conexion->query($sql)) {
                            echo '<tr><td>Nombre</td><td>Puntuación</td></tr>';
                            while ($row = $resultado->fetch_assoc()) {
                                $data1 = $row["nombre_usuario"];
                                $data3 = $row["score"];
                                echo '<tr>';
                                echo '<td>'.$data1.'</td>';
                                echo '<td>'.$data3.'</td>';
                                echo '</tr>';
                            }
                        }
                        $conexion->close();
                        ?>
                    </table>
                    <form class="button-reset" hidden>
                        <button type="submit" >Reintentar</button>
                    </form>
                </div>
            </div>
        </div>
    
    </body>
    <script type="text/javascript" src="./Script_quiz.js"></script>
</html>