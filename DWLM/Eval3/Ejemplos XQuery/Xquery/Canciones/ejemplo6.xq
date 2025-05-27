<html>
<head>
<title>Ejemplo 6</title>
</head>

<body>
<ol>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i/puntuacion>8
order by $i/puntuacion
return <li> {data($i/canción)} - ({data($i/puntuacion)}ptos) </li>
}
</ol>
</body>
</html>
