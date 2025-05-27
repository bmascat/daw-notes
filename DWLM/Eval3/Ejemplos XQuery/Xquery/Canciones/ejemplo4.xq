(: ejemplo 4 :)
(: PUNTUACIÓN MAYOR 8:)
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i/puntuacion>8
return $i/canción
