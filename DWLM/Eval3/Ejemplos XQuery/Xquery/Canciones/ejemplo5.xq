(: construimos una trasnformación con los datos obtenidos a html:)
(: Las instrucciones xquery pueden usarse para obtener datos y rellenar códigos bien formado en HTML, simplemente incrustando entre {-} la consulta:)


<html>
<head>
<title>Ejemplo 5</title>
</head>

<body>
<ol>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i/puntuacion>8
order by $i/puntuacion
return <li> {$i/canción}({$i/puntuacion}) </li>
}
</ol>
</body>
</html>
