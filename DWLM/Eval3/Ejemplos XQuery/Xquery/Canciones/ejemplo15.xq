<html>
<head>
<title>Ejemplo 15</title>
</head>
<body>
<ol>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i/puntuacion=8 or $i/puntuacion=10
order by $i/puntuacion
return <li class="{data($i/@almacenado)}"> {data($i/canción)}({data($i/puntuacion)}) </li>
}
</ol>
</body>
</html>
