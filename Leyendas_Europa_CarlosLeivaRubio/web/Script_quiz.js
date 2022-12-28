
let quizPregunta = document.querySelector('.contenedor-preg'),
    quizRespuesta = document.querySelector('.contenedor-res');
    vidas = document.querySelector('.vidas');
    puntos = document.querySelector('.score');
    numVidas = document.querySelector('.num-vidas');
    numPuntos = document.querySelector('.num-score');

var botonQuiz = document.querySelector('.button-quiz');
var arrayRes = document.querySelectorAll('.button-quiz-respuesta');

var registro = document.querySelector('.registro'),
    nomUsu = document.querySelector('.nomUsu'),
    botonRegistro = document.querySelector('.botonRegistro');

var score = document.querySelector('.scoreTabla');
    botonScore = document.querySelector('.button-score');

botonScore.addEventListener('click', function(){score.hidden=false}, false);

var reinicio = document.querySelector('.button-reset');

/* Contador de vidas */
var newNumVidas = 3;
/* Contador de puntos */
var newNumPuntos = 0;
/* respuesta correcta para comparar */
var respuestaCorrecta;

/* Controla si la respuesta seleccionada es la correcta y
dependiendo de si lo es o no, suma un punto o resta una vida */
function contVidas_Puntos(e){
    botonSelect = e.target.innerHTML.toString();
    let resCorrecta = respuestaCorrecta;  
    console.log(botonSelect + " == " + resCorrecta);
        if(botonSelect == resCorrecta){
            newNumPuntos++;
            numPuntos.innerHTML = newNumPuntos;
        }
        else if(preg_mostradas.length >= 1){
            newNumVidas--;
            numVidas.innerHTML = newNumVidas;
        } 
}

/* Rellena la pregunta y los boton de la respuesta con el contenido de la base de datos */
function fillQuiz(newQuizPregunta, newQuizRespuesta1, newQuizRespuesta2, newQuizRespuesta3) {
    quizPregunta.innerHTML = newQuizPregunta;
    /* para randomizar las posicion de las respuesta, genera un numero aleatorio entre
    0 y 2 y dependiendo de este numero cambia la posicion de las respuestas */
    var rand = Math.floor(Math.random() * 3);
    respuestaCorrecta = newQuizRespuesta1;
    if(rand == 0){
        arrayRes[0].innerHTML = newQuizRespuesta1;
        arrayRes[1].innerHTML = newQuizRespuesta2;
        arrayRes[2].innerHTML = newQuizRespuesta3;
    }
    else if(rand == 1){
        arrayRes[0].innerHTML = newQuizRespuesta3;
        arrayRes[1].innerHTML = newQuizRespuesta2;
        arrayRes[2].innerHTML = newQuizRespuesta1;
    }
    else if(rand == 2){
        arrayRes[0].innerHTML = newQuizRespuesta3;
        arrayRes[1].innerHTML = newQuizRespuesta1;
        arrayRes[2].innerHTML = newQuizRespuesta2;
    }
}

/* numero de la proxima pregunta */
var num_pregunta;
/* Array con los numeros de las preguntas ya mostradas */
var preg_mostradas = new Array();
/* Controlador del inicio del quiz */
var inicio = true;

/* Actualiza las preguntas */
function refreshQuiz(e) {
    /* Al inicio esconde todos lo que haya en el contenedor de la respuesta 
       y muestra los botones*/
    if(inicio == true){
        arrayRes.forEach(element => {
        element.removeAttribute("hidden");
        });
        botonQuiz.hidden = true;
        botonScore.hidden = true;
        score.hidden = true;
        vidas.hidden = false;
        puntos.hidden = false;

        inicio = false;
    }

    //Cantidad de preguntas en la base de datos
    var max_preg = 40;
    //Selecciona un numero de pregunta al azar
    num_pregunta = Math.floor(Math.random() * max_preg);
    
    //Si el array esta vacio simplemente añade el numero de la pregunta a este
    if(preg_mostradas.length == 0){
        preg_mostradas.push(num_pregunta);
    }
    /*Si el array ya contiene algo comprueba que el nuevo numero de la pregunta
      no haya salido ya, de esta forma las preguntas no se repiten */
    else {
        //Si ya a salido el numero lo vuelve a generar y lo comprueba de nuevo
        while(preg_mostradas.includes(num_pregunta)){
            num_pregunta = Math.floor(Math.random() * 40);
        }
        preg_mostradas.push(num_pregunta);
    }
    //Texto de boton selecionado
    var botonSelect =e.target.innerHTML.toString();
    /* Comprueba que no nos hemos quedado sin vidas y que no se han acabo las pregunto */
    if(preg_mostradas.length < max_preg-1 && newNumVidas > 0){
    /* crea la peticion para el PHP */
    var xhr = new XMLHttpRequest();
    /* variables para guardar la respuesta del PHP */
    var newQuizPregunta = "";
    var newQuizRespuesta1 = "";
    var newQuizRespuesta2 = "";
    var newQuizRespuesta3 = "";
    xhr.onreadystatechange = function () {
        /* comprueba que el servidor este listo para recibir la peticion */
        if (this.readyState == 4 && this.status == 200) {
            /* Guarda la respuesta en un objeto */
            var array = JSON.parse(this.responseText);
            /* Guarda el contenido del objeto en un array */
            var resArray = [array.respuesta1,array.respuesta2,array.respuesta3];
            /* Comprueba si la respuesta del PHP no esta vacia */
            if(array.enunciado != null){
                /* Rellena con la informacion de la base de datos */
                newQuizPregunta = array.enunciado;
                newQuizRespuesta1 = array.respuesta1;
                newQuizRespuesta2 = array.respuesta2;
                newQuizRespuesta3 = array.respuesta3;
                fillQuiz(newQuizPregunta, newQuizRespuesta1, newQuizRespuesta2, newQuizRespuesta3, botonSelect);
            }
            /* En caso de que no reciba informacion de la base de datos mostrará un error */
            else {
                newQuizPregunta = "Error";
                fillQuiz(newQuizPregunta, newQuizRespuesta1, newQuizRespuesta2, newQuizRespuesta3, botonSelect);
            }
        }
    }
    /* Manda la peticion al php con la informacion necesaria */
    var url = "Pedir_PreguntaDB.php?id_pregunta=" + num_pregunta;
    xhr.open("GET", url, true);
    xhr.send();
    }
    /* En caso de quedarnos sin vidas muesta un mensaje y el formulario para guarda la puntuacion */
    else if(newNumVidas <= 0){
        quizPregunta.innerHTML = "<i>Te has quedado sin vidas</i>";
        arrayRes.forEach(element => {
            element.hidden = true;
            });
            registro.hidden = false;
    }
    /* En caso de haber completado el quiz sin quedarse sin vidas muesta un mensaje y el formulario para guarda la puntuacion */
    else if(preg_mostradas.length <= 40){
        quizPregunta.innerHTML = "<i>¡Increible!, has contestado a todas las preguntas</i>";
        arrayRes.forEach(element => {
            element.hidden = true;
            });
            registro.hidden = false;
    }
}

/* Toma el contenido del formulario de registro y los puntos y hace una peticion al PHP */
function mandarUsuario(){
    var xhr = new XMLHttpRequest();
    var newNomUsu = nomUsu.value;
    // Manda la petición con los datos necesarios 
    var url = "Score_usu.php?nomUsu=" + newNomUsu + "&score=" + newNumPuntos;
    xhr.open("GET", url, true);
    xhr.send();
    /* Una vez mandada la petición esconde el formulario de registro y muestra el boton "Reintentar" */
    registro.hidden = true;
    reinicio.hidden =false;
    quizPregunta.innerHTML = "¿Quieres volver a intentarlo?";
}

//Añade el evento al boton inicial
botonQuiz.addEventListener("click", refreshQuiz, false);

//Añade los eventos a los botones de las respuestas
var arrayRes = document.querySelectorAll('.button-quiz-respuesta');
arrayRes.forEach(element => {
    element.addEventListener('click', contVidas_Puntos, false);
    element.addEventListener('click', refreshQuiz, false); 
    });

//Añade el evento al boton de resgistro de usuario
botonRegistro.addEventListener('click', mandarUsuario, false);
