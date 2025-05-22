<html>
<head>
<title>Ejemplo 8</title>
</head>

<body>
<table>
<caption>DISCO 1 </caption>
<tr><td>Artista</td><td>Disco</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
order by $i/puntuacion
return if ($i/@almacenado="DISCO1")
then <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td></tr>
else ()
}
</table>

<table>
<caption>DISCO 2 </caption>
<tr><td>Artista</td><td>Disco</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
order by $i/puntuacion
return if ($i/@almacenado="DISCO2")
then <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td></tr>
else ()
}
</table>
</body>
</html>
