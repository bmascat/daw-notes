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
