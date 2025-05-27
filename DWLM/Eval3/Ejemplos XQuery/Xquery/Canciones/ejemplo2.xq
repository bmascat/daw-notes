(: ejemplo 2 :)
(: Canciones con la puntuación igual a 10 :)

doc("canciones.xml")/MiBibliotecaMP3/archivo/puntuacion,

(: Solo hay una... Master of Puppets :)


'--- XPATH ----',
doc("canciones.xml")/MiBibliotecaMP3/archivo[puntuacion=10],

'--- FLOWR ----',

for $x in /MiBibliotecaMP3/archivo
where $x/puntuacion = 10
return $x


