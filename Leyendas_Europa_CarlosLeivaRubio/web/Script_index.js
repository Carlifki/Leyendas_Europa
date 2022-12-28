
//Selectores
var arrayCountry = document.querySelectorAll('.Country'),
    overlay = document.getElementById('overlay'),
    popup = document.getElementById('popup'),
    btnCerrarPopup = document.getElementById('btn-cerrar-popup');

let leyendaTitle = document.querySelector('.popup-content-title'),
    leyendaText = document.querySelector('.popup-content-text'),
    leyendaImg = document.querySelector('.popup-content-img');

/* Rellena el pop-up con la informacion de la base de datos */
function fillLeyen(leyendaTitleNew, leyendaTextNew, leyendaImgNew) {
    leyendaTitle.innerHTML = leyendaTitleNew;
    leyendaText.innerHTML = leyendaTextNew;
    leyendaImg.innerHTML = leyendaImgNew;
}

/* abre el pop-up y le da formato */
function abreLeyenda(e) {
    /* guarda el id del pais seleccionado */
    var idPais = e.target.getAttribute('id');
    /* crea la peticion */
    var xhr = new XMLHttpRequest();

    /* crea variables para guardar los resultados */
    var newTitle = "";
    let newText = "";
    let newImg = "<img src='";
    xhr.onreadystatechange = function () {
        /* comprueba que el servidor este listo para recibir la peticion */
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            var array = JSON.parse(this.responseText);
            /* Comprueba si existe el pais no es nulo */
            if(array.titulo_leyenda != null){
                /* Rellena el pop-up con la informacionde la base de datos */
                newTitle += array.titulo_leyenda;
                newText += array.contenido;
                newImg += array.imagen + "' >";
                fillLeyen(newTitle, newText, newImg);
            }
            /* En caso de que no reciba informacion de la base de datos 
               rellena el pop-up con placeholders */
            else {
                newTitle = "Proximamente";
                newText = "";
                newImg = "";
                fillLeyen(newTitle, newText, newImg);
            }
        }
    }

    /* Manda la peticion al php con la informacion necesaria */
    var url = "Pedir_leyendaDB.php?siglas_pais=" + idPais;
    console.log(url);
    xhr.open("GET", url, true);
    xhr.send();

    /* Hace visible el pop-up */
    overlay.classList.add('active');
    popup.classList.add('active');
}

/* Añade el evento de abrir ventana a todos los paises del mapa */
arrayCountry.forEach(element => {
    element.addEventListener('click', abreLeyenda, false);
});

/* Añade el evento a la 'X' para cerrar el pop-up */
btnCerrarPopup.addEventListener('click', function (e) {
    e.preventDefault();
    overlay.classList.remove('active');
    popup.classList.remove('active');
});