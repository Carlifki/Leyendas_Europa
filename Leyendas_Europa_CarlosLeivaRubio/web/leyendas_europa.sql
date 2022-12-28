-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-05-2022 a las 10:44:22
-- Versión del servidor: 8.0.29-0ubuntu0.20.04.3
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `leyendas_europa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leyenda`
--

CREATE TABLE `leyenda` (
  `id_leyenda` int NOT NULL,
  `siglas_pais` varchar(3) NOT NULL,
  `titulo_leyenda` varchar(50) NOT NULL,
  `contenido` text,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `leyenda`
--

INSERT INTO `leyenda` (`id_leyenda`, `siglas_pais`, `titulo_leyenda`, `contenido`, `imagen`) VALUES
(1, 'IS', 'Yule Lads', '<p>La ogra Grýla y su familia, bajan de las montañas del norte de Islandia cada año en diciembre, con un saco para llevarse la comida e incluso los niños que se portan mal para cocinarlos durante el crudo invierno.</p>\n <p>Grýla, sin embargo, no es solo la personificación del frío y de la nieve que todo lo cubre en el invierno, sino también es quien controla los glaciares, los volcanes y los terremotos, por lo tanto, un ser muy poderoso.</p>\n <p>Grýla tiene 13 hijos, que también bajan de las montañas a atormentar a los habitantes de Islandia, cada uno a su manera, hay uno que se roba las salchichas, hay otro que solo roba la leche de las vacas, etc.</p>', 'img/Yule-Lads_Islandia.png'),
(2, 'PT', 'La Fonte da Moura', '<p>Un grupo de caballeros, liderado por su joven rey, viajaba desde hacía unos días por los campos cuando, muertos de sed, buscaron una fuente.</p>\n <p>Encontraron entonces a una joven mora fugitiva que, al ser preguntada por la fuente más próxima, les dijo que estaba muy muy lejos. Además, añadió en tono de desafío que, si el Dios de los cristianos era tan poderoso, hiciese nacer allí mismo una fuente y, tal vez entonces, ella se convirtiese.</p>\n <p>D. Afonso Henriques se retiró a rezar y, de repente, se escuchó un ruido sordo y se vio un chorro de agua limpia y fresca que formó un pequeño regato. Los caballeros se arrodillaron frente al milagro y la joven mora, que lloraba de emoción, prometió dedicar su vida al Dios cristiano. La fuente quedó conocida por siempre como la Fonte da Moura (Fuente de la Mora).</p>', 'img/Poza-da-moura_Portugal.png'),
(3, 'ES', 'Los amantes de Teruel', '<p>Isabel de Segura y Diego de Marcilla vivieron en el Teruel del siglo XIII y se hicieron amigos ya cuando eran niños.</p>\n<p>Un día decidieron casarse, pero el padre de Isabel no estaba de acuerdo.</p>\n<p>Al final decidieron esperar a que Diego hiciese fortuna para así contentar al padre de su enamorada. Juraron esperar cinco años juntando los cinco dedos de su mano derecha.</p>\n<p>Un día, Diego se tuvo que marchar a luchar a las cruzadas. Se dice que la familia de Isabel pagó a un hombre para que hiciese creer a todo Teruel que Diego había caído en el frente. Todo esto llegó a oídos de Isabel.</p>\n<p>- pasan 5 años -</p>\n<p>Diego no habia regresar, el padre de Isabel la empujó a casarse con otro pretendiente: don Pedro de Azagra. Justo el día de la boda, Diego consiguió regresar a Teruel.</p>\n<p>Diego decidió ir en busca de Isabel. Se encaramó a su balcón y la despertó para rogarle ese beso que llevaba cinco años esperando. Isabel no se atrevió a traicionar al hombre con el que se acababa de casar.</p>\n<p>Ese rechazo fulminó el corazón de Diego, quien cayó en ese mismo instante. Isabel estaba desconsolada por haber perdido a su verdadero amor. Decidida, se coló en el funeral para poder darle un beso, en ese preciso instante, ella también cayó muerta sobre Diego. Sus familias decidieron enterrarlos juntos para que no volviesen a separarse nunca más.</p>', 'img/amantes-teruel_Espanya.png'),
(4, 'FR', 'El hombre de la máscara de hierro', '<p>Un misterioso personaje francés de los siglos XVII-XVIII, que fue encarcelado por razones desconocidas en la prisión de la Bastilla. Mientras estuvo en prisión su rostro fue cubierto con una máscara de hierro.</p>\n<p>Según Voltaire(escritor de la epoca), el «hombre de la máscara de hierro» era un joven alto y hermoso, de buena obediencia y a quien no se le negaba nada de lo que pedía en la Bastilla y en otras prisiones. Se le daba la mejor cena y el alguacil se reunía alguna que otra vez con el personaje. Además, le agradaban los vestidos finos y los encajes y le gustaba tocar la guitarra.</p>', 'img/el-hombre-dela-mascara-de-hierro_Francia.png'),
(5, 'IT', 'Romulo y Remo (la fundación de Roma)', '<p>En la ciudad latina de Alba Longa el rey Numitor fue derrocado por su hermano, Amulio, el cual asesinó a todos los hijos varones de Numitor, dejando tan solo viva a su hija.</p>\n <p>Su hija, llamada Rea Silvia fue uuna sacerdotisa romana que debía permanecer virgen. Pero esta enamoró al dios de la Guerra, Marte, y juntos tuvieron dos hijos, llamados Rómulo y Remo.</p>\n <p>Al conocer Amulio el nacimiento de los dos niños ordenó asesinarlos, pero el encargado no fue capaz de matar a dos niños y los dejó abandonados en el río Tiber. La corriente los desplazó hasta un lugar entre colinas, y allí fueron encontrados por la loba Luperca, quien les cuido y alimento durante años. \r\n\r\nMás tarde, fueron encontrados por el pastor Fáustulo, quien crió en secreto a Rómulo y Remo.</p>\n <p>Al crecer se les contó la verdad de su nacimiento, por lo que ambos hermanos buscaron venganza. Ambos marcharon a Alba Longa, asesinaron a Amulio y volvieron a colocar en el trono a su abuelo, Numitor.</p>\n <p>Rómulo y Remo se fueron de Alba Longa con la idea de fundar una ciudad sobre la que poder gobernar.  Rómulo quería fundar Roma en el Monte Palatino y Remo quería fundar Remoria en el Aventino.</p>\n <p>Ambos eran de la misma edad, por lo que ninguno tenía supremacía sobre el otro para reinar, así que hicieron un juego para elegir quien gobernaría, el cual consistía en ver más buitres que el otro. Siendo el ganador Rómulo.<p>\n <p>Rómulo trazó unas líneas para marcar los límites de la ciudad de Roma ordenando que nadie los podía cruzar, pero Remo decidió cruzar las líneas, desafiando a su hermano. Esto provocó una pelea en la que Remo sufrió heridas y murió no mucho después. Rómulo enterró a su hermano en Aventino, y fundó Roma, siendo la fecha de fundación el 21 de abril del 753 a.C.</p>', 'img/romulo-y-remo_Italia.png'),
(6, 'SU', 'El Puente del Diablo', '<p>Cuentan los habitantes del Cantón de Uri que, en el mismo siglo XIII, los lugareños que vivían cerca del río Reuss se propusieron construir un puente para cruzar el escarpado valle que había formado el cauce de las aguas.</p>\n<p>Tras varios fracasos en la construcción, en los que muchas personas habían muerto tras caer al vacío, el gobernante de Urner, pueblo de la zona, exclamó desesperado: «solo el diablo puede construir este puente».</p>\n<p>Al instante el diablo hizo acto de aparición en Urner y propuso al pueblo un pacto: él construiría el puente a condición de que la primera persona que lo cruzara le entregase su alma para siempre. Los habitantes aceptaron y un puente impresionante apareció sobre la garganta del río.</p>\n<p>Como es natural, las buenas gentes de Urner no sabían a quién enviar para que cruzara el puente y un campesino propuso lo siguiente: desataría su macho cabrío y lo empujaría a través del puente.</p>\n<p>El diablo, lleno de ira al ver que intentaban engañarle, cogió una gran piedra y amenazó con destruir el puente. En su furia no se dio cuenta de que una anciana andaba hacia el puente hasta acabar trazando una cruz en la primera piedra de la construcción. En ese instante, el puente dejó de ser un objetivo para el diablo que dejó caer la pesada piedra y se esfumó para no volver nunca más.</p>', 'img/puente-del-diablo_Suiza.png'),
(7, 'IR', 'Jack-o’-lantern', '<p>Jack “el tacaño” era un irlandés bebedor, bastante aprovechado, mala persona, y muy astuto. Un día el diablo apareció para llevárselo, y Jack le pidió una última voluntad antes de que le llevara con él.</p>\n<p>Le pidió ir al pub y beberse una última cerveza. El diablo aceptó, y fue al bar.<p>\n<p>Cuando acabó de beber, consiguió convencer al diablo para que se transformara en una moneda, para así poder pagar al tabernero, luego lo atrapó temiéndolo en su bolsillo, ya que dentro llevaba un crucifijo. Para liberarse el diablo le concedió 10 años más de vida a Jack, y él aceptó.</p>\n<p>Diez años más tarde, satán fue a buscar definitivamente a Jack.  Él al reencontrarse con el diablo, le pidió ir a un manzano y tomar una última manzana antes de morir. Jack convenció al demonio y fueron a un bosque. El diablo subió al árbol a recoger una manzana y Jack rodeó todo el árbol de crucifijos, dejando al diablo atrapado. Jack le pidió que su alma nunca pudiera ser tocada por el diablo, y este para liberarse aceptó.</p>\n<p>Cuando Jack murió trató entrar al cielo, pero San Pedro no le dejó entrar, ya que había llevado una vida muy pecaminosa. Al no poder entrar al cielo, y al no poder tocar satanás su alma, quedó condenado a vagar como un espíritu el resto de su vida. Con un nabo fabricó una linterna para alumbrar su camino, creándose así las jack-o’-lanterns.</p>', 'img/Jack-O-lantern_Irlanda.png'),
(8, 'UK', 'Excalibur, la espada mágica', '<p>Existió en Ávalon, en la isla galesa de las hadas, una espada mágica. La espada, de nombre Excalibur, fue forjada por el mago Merlín cuando murió del rey Uther Pendragón.</p>\n<p>Excalibur tenia el poder de curar y evitar la muerte de su dueño. Pero lo más importante, es que escondía una profecía. El mago clavó la espada en una enorme roca junto a una capilla de Londres:</p>\n<p>«Aquel que consiga liberar esta espada mágica de su roca, será el legítimo rey de Inglaterra.»</p>\n<p>Nobles, caballeros, guerreros, todos intentaron sin éxito sacar de la piedra a Excálibur. Y pasaron meses y años sin que nadie pudiera hacerse de forma legítima con el trono.</p>\n<p>Un joven llamado Arturo acudió un buen día a Londres. Se acercó a la espada, bajo la atenta mirada de cientos de personas. Ese día, la roca tembló, la espada vibró en la mano del joven, y lentamente, salió de la roca. Excalibur brillaba y todos se arrodillaron ante su nuevo rey.</p>', 'img/Excalibur_Inglaterra.png'),
(9, 'BE', 'Los cisnes de Brujas', '<p>Año 1488, la ciudad disfrutaba de una gran prosperidad económica gracias al comercio de paños.</p>\n<p>El Conde de Flandes quería conseguir el control de todo, por lo que en la ciudad se produjeron situaciones violentas que conllevaron al encarcelamiento del Conde, y a la muerte de uno de sus hombres de confianza, el gobernador de la ciudad.</p>\n<p>Tras la perdida del apoyo del Conde hacia la ciudad, dejaron de llegar barcos a esta, muriendo así el comercio que causó la evolución del lugar.</p>\n<p>Cuenta la leyenda, que el lugar fue ocupado por cisnes en honor al fallecido; pues este, Pieter Lanchals, cuyo apellido significa «cuello largo», tenía en su escudo un cisne blanco.</p>\n<p>Maximiliano de Austria (amigo del gobernador), impuso a la población el castigo de mantener a los cisnes para toda la eternidad.</p>', 'img/Lago-de-los-cisnes_Belgica.png'),
(10, 'HO', 'El holandés errante', '<p>El capitán de un barco holandés, un capitán burgués de Holanda llamado Willem van der Decken, quien hizo un pacto con el diablo para poder surcar siempre los mares sin importar los retos naturales que pusiera Dios en su travesía.</p>\n<p>Dios, omnisciente, se entera de esto y en castigo lo condena a navegar eternamente sin rumbo y sin tocar tierra, por lo que recibe el nombre de «Holandés errante».</p>', 'img/holandes-errante_Holanda.png'),
(11, 'LU', 'La hada Melusina', '<p>Melusina era un hada de sangre real. Era muy rica y capaz, el único problema era que cada sábado al bañarse sus piernas se convertían una cola de pez, ademas si se casaba con un caballero, éste no podía descubrir su secreto o nunca volvería a recuperar sus piernas.</p>\n<p>Encontró un buen hombre, se casaron, tuvieron diez hijos y vivieron muy felices en un gran castillo. Los rumores decían que cada sábado Melusina se veía con su amante, sembrando en su marido la sospecha de una traición. Movido por los celos, el marido de Melusina espió a ésta durante su baño del sábado. Cuando el hada se dio cuenta, saltó al alféizar de la ventana y se tiró al río, despareciendo entre sus aguas para siempre.</p>', 'img/Melusina_Luxemburgo.png'),
(12, 'ALE', 'La ninfa Lorelei', '<p>En lo alto de una empinada roca en el río Rin, una vez vivió una exquisita ninfa llamada Lorelei. No solo su belleza física era asombrosa, sino que la sirena cantaba una canción tan inquietante e hipnotizan-te que ningún marinero podía resistir su aura. </p>\n<p>Atraído por su canción, la leyenda dice que ningún marino que intentó llegar a Lorelei regresó alguna vez. En cambio, encontrarían su destino final chocando contra las rocas peligrosas. </p>\n<p>Hoy, una estatua de Lorelei vigila el traicionero tramo de agua cerca de Sankt Goarshausen.</p>', 'img/loreley_Alemania.png'),
(13, 'DK', 'Beowulf el heroe', '<p>El palacio Heorot era el centro de llamativas fiestas durante la noche, generadas por el rey Hrothgar, sus criados y guerreros.</p> \n<p>El bullicio era tal, que Grendel, un monstruo que habitaba en las ciénagas, se despertaba y furioso arremetía contra el rey y sus guerreros matando y devorando algunos de estos.</p>\n<p>Esta maldición aquejó a la corte de Heorot, todas las noches, durante doce años, la grave situación del rey se esparció por las tierras nórdicas hasta llegar a oídos de Beowulf, un héroe gauta que decidió terminar con este problema.</p>\n<p>Intrépido y decidido, Beowulf tomó catorce guerreros y partió rápidamente a Heorot. Viendo el rey que no quedaban muchas alternativas, ofreció un banquete a Beowulf y luego abandonó la sala dejándola bajo la vigilancia de los gauta.</p>\n<p>De nuevo apareció Grendel, derribó las sólidas puertas del salón y devoró a uno de los guerreros. Esto enfureció a Beowulf, que sin armas ataca al engendro logrando arrancar-le un brazo y hacerle huir.</p>\n<p>Ante tal proeza el rey regaló un collar a Beowulf y celebró una fiesta en su honor, mientras la misma se llevaba a cabo, la madre de Grendel, aun mas furiosa de lo que su vástago pudiera algún día llegar a estar, se presenta para vengarlo. Así mató a uno de los hombres del rey, y se marchó llevándose el brazo que su pequeño había perdido.</p>\n<p>Sin perder tiempo, Beowulf siguió el rastro de la criatura junto a sus guerreros y tras nadar casi un día en las profundidades de un lago atestado de bestias sobrenaturales, se encuentra con la madre de Grendel. Inmerso en una cruel batalla, el héroe quedó malherido pero utilizando una gigantesca espada consigue acabar con la ogresa cortándole la cabeza.</p>', 'img/beowulf_Dinamarca.png'),
(14, 'AT', 'Krampus', '<p>Esta criatura de demoníaca apariencia castiga a los niños malos durante la temporada de Navidad, en contraste con San Nicolás, quien premia a los niños buenos con regalos.</p>\n<p>Se dice que Krampus captura a los niños particularmente traviesos en su saco y los lleva con él a las profundidades del infierno para ser devorados. Su misión es amedrentar a los niños para que se porten bien<p>', 'img/Krampus_Austria.png'),
(15, 'CH', 'Heykal', '<p>«Hey, hey, hey...»</p>\n<p>Según las leyendas populares, en los bosques checos se oían muy a menudo estas llamadas de los fantasmas denominados “Heykal”.</p>\n<p>La persona que respondiera a su ”hey,hey,hey” tenía en un instante al fantasma sobre la espalda, sin poder librarse de él, cuando el Heykal se agarraba a una rueda del carro, ni un par de bueyes eran capaces de poner el vehículo en marcha.</p>', 'img/Heukal_Chequia.png'),
(16, 'SK', 'Los caballeros de Sitno', '<p>Hace mucho tiempo hubo un castillo en un lugar llamado Sitno, el príncipe Stojmír que vivia alli, tenía dos hijos. Bajo el cuidado paternal de Stojmír la gente vivía en prosperidad y paz.</p>\n<p>En su lecho de muerte, Stojmír llamó a sus hijos y les animó a vivir en paz. El Príncipe gobernante sería el hijo mayor Tyra y el hijo menor Želibor sería su súbdite; solo serían fuertes mientras estuvieran unidos.</p>\n<p>Sin embargo los hijos no obedecieron los consejos sabios del padre y pronto empezaron a luchar uno contra el otro. El pontífice Nákon, que era el sacerdote del lugar, hizo todo lo posible para evitar la batalla fratricida pero fue en vano.</p>\n<p>Un día, cuando las densas filas de guerreros se enfrentaron, Nákon volvió a tratar de reconciliarlos en vano y estando ya harto los maldijo:</p>\n<p>«¡Que se abra la roca de Sitno y devore a todos vosotros y que no vuelva a abrirse hasta que la nación eslovaca pida vuestra ayuda, para que expiéis así vuestro pecado!»</p>\n<p>En cuanto Nákon pronunció estas palabras, un fuerte rayo alborotó e iluminó todo el alrededor, una fuerte tormenta se descargó, unas grandes llamas envolvieron a los guerreros y la tierra se agrietó.</p>\n<p>Los guerreros desaparecieron, la roca de Sitno los había devorado encerrándolos en grandes y espaciosas salas que se formaron dentro. Allí esperan, preparados para emprender la lucha cuando la nación eslovaca los llame.</p>\n<p>Cada siete años se despiertan aún sin ser llamados y preguntan al viejo caballero que guarda la puerta si ha llegado el tiempo ya. El viejo caballero sube al pico Sitno para gritar hacia los cuatro puntos cardinales preguntando si ha llegado el tiempo ya. Si no llega la respuesta «¡Ya!», vuelve a cerrar la puerta de hierro y regresa a la sala para que los caballeros puedan descansar siete años más.</p>', 'img/Los-caballeros-de-Sitno_Eslovakia.png'),
(17, 'SL', 'El rey Matjaz', '<p>La leyenda sobre el rey Matjaz cuenta de un buen rey que reinaba durante el período de Carantania. En su período fueron tiempos de oro en la región de Koroska, lo que molestaba mucho a otros emperadores. Por eso mandaron al ejército sobre el buen rey.</p>\n<p>Éste, junto con un centenar de sus soldados se escondió en una cueva secreta debajo de la montaña Peca y se sentó detrás de una mesa de piedra. La leyenda cuenta que Matjaz volverá y desterrará la injusticia del mundo cuando su barba dé la vuelta a la mesa nueve veces y delante de la entrada a la cueva crezca el tilo en mitad del invierno.</p>', 'img/Rey-dormido_Eslovenia.png'),
(18, 'CR', 'El primer vampiro europeo, Jur', '<p>Cuenta la leyenda, que en 1656, Jure Grando volvió de entre los muertos al pueblo donde habitaba. Convertido en un maléfico ser, el vampiro se levantaba de su tumba todas las noches y acudía a la que fue su casa para abusar de su mujer.</p>\n<p>La mujer vivía horrorizada con las apariciones de su esposo, los habitantes de Kringa, cansados de la situación, intentaron matar al vampiro perforando su corazón con estacas de espino, lo que no surgió efecto, e hizo que Grando matara a todos los causantes del ataque chupando su sangre.</p>\n<p>En 1672, un grupo de lugareños asaltaron al maléfico ser mientras descansaba en su tumba. Stipan Milasac, quien lideraba el grupo, consiguió degollar al vampiro, lo que finalmente consiguio acabar con la vida de la criatura.', 'img/Jure-Grando_Croacia.png'),
(19, 'BI', 'La Matrioshka', '<p>Un humilde carpintero llamado Serguei, un día halló un tronco perfecto el cual se llevó a casa. Serguei no sabía qué hacer con él, hasta que un día le vino a la mente la idea de hacer una muñeca. La hizo con tanto amor y tan bella que tras acabarla no quiso venderla, y le dió el nombre de Matrioshka.</p>\n<p>El joven saludaba a su creación todos los días, pero un día y de manera sorprendente esta le devolvió el saludo. Poco a poco fueron estableciendo una comunicación y buena relación, pero un día la muñeca le indicó su tristeza porque todas las criaturas tenían hijos, menos ella.</p>\n<p>El carpintero le dijo que si quería hijos debería sacar la madera de su interior, algo que ella aceptó. Serguei hizo una copia de menor tamaño, a la que llamó Trioska. Pero con el tiempo Trioska tuvo también ganas de tener hijos, con lo que con parte de su madera hizo otra versión más pequeña: Oska.</p>\n<p>La situación se repitió con ella, con lo que Serguei elaboraría una muñeca más, esta vez con bigote y con aspecto masculino para que no tuviera instinto maternal. A este último le pondría de nombre Ka.</p>', 'img/Matrioska_Bielorrusia.png'),
(20, 'UC', 'Domovik, el espiritu del hogar', '<p>Un domovik, es un espíritu doméstico de la mitología eslava precristiana, un ser que vive en el hogar o detrás de la estufa de un hogar eslavo y protege a los habitantes del daño.</p>\n<p>La función principal del domovik es proteger a la familia del hogar, advertirles cuando van a suceder cosas malas, evitar que los espíritus del bosque hagan bromas a la familia y que las brujas roben las vacas.</p>\n<p>Cuando muere el cabeza de familia, se le puede escuchar llorar por la noche.</p>', 'img/Domovik__Ucrania.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int NOT NULL,
  `nombre_pais` varchar(30) NOT NULL,
  `siglas_pais` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre_pais`, `siglas_pais`) VALUES
(1, 'Islandia', 'IS'),
(2, 'Portugal', 'PT'),
(3, 'Espanya', 'ES'),
(4, 'Francia', 'FR'),
(5, 'Italia', 'IT'),
(6, 'Suiza', 'SU'),
(7, 'Irlanda', 'IR'),
(8, 'Inglaterra', 'UK'),
(9, 'Belgica', 'BE'),
(10, 'Holanda', 'HO'),
(11, 'Luxemburgo', 'LU'),
(12, 'Alemania', 'ALE'),
(13, 'Dinamarca', 'DK'),
(14, 'Austria', 'AT'),
(15, 'Chequia', 'CH'),
(16, 'Eslovakia', 'SK'),
(17, 'Eslovenia', 'SL'),
(18, 'Croacia', 'CR'),
(19, 'Bielorrusia', 'BI'),
(20, 'Ucrania', 'UC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int NOT NULL,
  `enunciado` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `respuesta1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `respuesta2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `respuesta3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `enunciado`, `respuesta1`, `respuesta2`, `respuesta3`) VALUES
(1, '¿Cual es el nombre de la ogra islandesa?', 'Gryla', 'Casandra', 'Grunilda'),
(2, '¿Cuantos hijos tenia la ogra?', '13', '20', '3'),
(3, '¿Que buscaban los caballeros portugueses?', 'Una fuente', 'Un castillo', 'Una posada'),
(4, '¿Como se originó la fuente da Moura?', 'Rezando', 'Excavando', 'De forma misteriosa'),
(5, '¿Cual de los amantes de teruel se casó?', 'Isabel', 'Diego', 'Ninguno'),
(6, '¿Cual de los amantes de teruel murió primero?', 'Diego', 'Isabel', 'Murieron a la vez'),
(7, '¿A que clase social pertenecia el hombre de la máscara de hierro?', 'Noble', 'Realeza', 'Campesino'),
(8, '¿Que donde procede la leyendas del hombre de la mascara de hierro?', 'Francia', 'Alemania', 'Italia'),
(9, '¿Quien es el padre de Romulo y Remo?', 'El dios de la guerra', '¡Zeus!', 'Julio Cesar'),
(10, '¿Cual de los hermanos fundadores de Roma es el mayor?', 'Son gemelos', 'Romulo', 'Remo'),
(11, '¿Que fue lo que construyo el diablo en Suiza?', 'Un puente', 'Una fortaleza', 'Un coloso'),
(12, '¿Cual era el precio por el puente que creo el diablo en Suiza?', 'El alma del primero que lo cruce', 'La lealtad del pueblo', 'La hija del jefe del pueblo'),
(13, '¿En que le pidio Jack <i>el tacaño</i> que se convirtiera el diablo?', 'Una moneda', 'Un arma', 'Un leon'),
(14, '¿Que verdura utilizo Jack, para crear el primer jack-o’-lanterns?', 'Un nabo', 'Una calabaza', 'Una sandia'),
(15, '¿Cual es el nombre de la espada magica encantada por Merlin?', 'Excalibur', 'Pendragon', 'Dragon Slayer'),
(16, '¿Quien es el padre del hombre que sacó a Excalibur de la piedra?', 'Uther Pendragón', 'Austin Powers', 'Lancelot Jonnes'),
(17, '¿Quien trato de apoderarse de la ciudad de Brujas?', 'El Conde de Flandes', 'El gobernador de la ciudad vecina', 'Los Pacos'),
(18, '¿Que animal habita los lagos de Brujas?', 'Cisnes', 'Gorriones', 'Carpas'),
(19, '¿A que se dedicaba Willem van der Decken?', 'A la pirateria', 'Al secuestro y venta de esclavos', 'Asesino a sueldo'),
(20, '¿Que maldición le impuso Dios a la tripulación del holandés errante?', 'Inmortalidad y no poder tocar tierra', 'Inmortalidad y amnesia', 'Inmortalidad y ceguera'),
(21, 'Melusina era una...', 'Hada', 'Ninfa', 'Bruja'),
(22, '¿Cuales era la sospecha del marido de Melusina?', 'Que tenia un amante', 'Que era un monstruo', 'Que se estaba muriendo'),
(23, '¿Cuales era la sospecha del marido de Melusina?', 'Que tenia un amante', 'Que era un monstruo', 'Que se estaba muriendo'),
(24, '¿En que río que encontraba la ninfa Lorelei?', 'Rin', 'Volga', 'Ebro'),
(25, '¿Porque atacó Grendel el palacio Heorot?', 'Por las escandalosas fiestas', 'Porque tenia hambre', 'Para buscar un oponente digno'),
(26, 'Tras la derrota de Grendel,¿Quien fue a vengarlo?', 'Su madre', 'Su padre', 'Sus hijos'),
(27, '¿Que clase de criatura es Krampus?', 'Un demonio', 'Un angel caido', 'Un ogro'),
(28, '¿A que niños se lleva Krampus?', 'A los niños malos', 'A los niños feos', 'A los niños tristes'),
(29, '¿Donde se encuentra los fantasmas llamados <i>Heykal</i>?', 'En los bosques', 'En los lagos', 'En el cementerio'),
(30, '¿Que es lo que nunca debes hacer si escuchar <i>hey hey hey..</i> en un bosque?', 'Contestar', 'Mirar al cielo', 'Salir corriendo'),
(31, '¿Quien maldijo a los caballeros de Sitno?', 'El pontifice del lugar', 'El diablo', 'Las hadas'),
(32, '¿Cada cuantos años despierta los caballeros de Sitno?', '7', '25', '5'),
(33, '¿Cuanta vuelta se dice que debe dar la barba del rey Matjaz a la mesa?', '10', '100', '50'),
(34, '¿Cuantos soldados se llevó el rey Matjaz?', 'Un centenar', 'Una docena', 'Solamente al principe'),
(35, '¿Que clase de criatura era Jure Grando?', 'Un vampiro', 'Un duende', 'Un espiritu del aire'),
(36, '¿Como murio Jure Grando?', 'Decapitado con una espada', 'Ardio en la hogera', 'De un infarto'),
(37, '¿Cual era el mayor deseo de Matrioshka?', 'tener hijos', 'Ser humana', 'Conseguir la paz'),
(38, '¿Cual fue el ultimo descendiente de Matrioshka?', 'Ka', 'Oshka', 'Paco'),
(39, '¿Cual es la función de un domovik?', 'Proteger a la familia del hogar', 'Luchar junto a dueño', 'Aliviar el dolor'),
(999, 'Pezones', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `score`) VALUES
(1, 'Paco', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `leyenda`
--
ALTER TABLE `leyenda`
  ADD PRIMARY KEY (`id_leyenda`),
  ADD KEY `siglas_pais_leyendas` (`siglas_pais`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`),
  ADD UNIQUE KEY `nombre_pais` (`nombre_pais`),
  ADD UNIQUE KEY `siglas_pais` (`siglas_pais`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nameUsu` (`nombre_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `leyenda`
--
ALTER TABLE `leyenda`
  MODIFY `id_leyenda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `leyenda`
--
ALTER TABLE `leyenda`
  ADD CONSTRAINT `leyenda_ibfk_1` FOREIGN KEY (`siglas_pais`) REFERENCES `pais` (`siglas_pais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
