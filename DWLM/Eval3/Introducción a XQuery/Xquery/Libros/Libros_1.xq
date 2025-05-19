(: 1.- Título y editorial de todos los librosPara devolver varios campos, los envolvemos en un elemento :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return <libro>{$x/titulo, $x/editorial}</libro>,


"-----------prueba1----------",
for $x in doc("libros.xml")//libro
return <libro>{$x/titulo, $x/editorial}</libro>









