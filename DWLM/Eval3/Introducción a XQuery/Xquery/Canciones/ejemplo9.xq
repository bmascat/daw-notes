<html>
<head>
<title>Ejemplo 9</title>
</head>

<body>
<table>
<caption>CANCIONES POR DISCO </caption>
<tr><td>Artista</td><td>Nombre disco</td><td>Grabada en</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
order by $i/puntuacion
return if ($i/@almacenado="DISCO1")
then <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td>
     <td>DISCO1</td></tr>
else <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td>
     <td>DISCO2</td></tr>
}
</table>
</body>
</html>
