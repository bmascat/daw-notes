(: 1.- Título y editorial de todos los libros. Para devolver varios campos, los envolvemos en un elemento :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return <libro>{$x/titulo, $x/editorial}</libro>,

(: para repetir una consulta, hay que incluir al final de la anterior una coma y además se pueden poner comentarios entre comillas para visualizarlos en la pantalla de salida:)
"-----------prueba1----------",
for $x in doc("libros.xml")//libro
return <libro>{$x/titulo, $x/editorial}</libro>









