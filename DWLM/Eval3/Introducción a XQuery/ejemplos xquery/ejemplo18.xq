<html>
<head>
<title>Ejemplo 18</title>
</head>

<body>
<table>
<caption>CANCIONES POR DISCO </caption>
<tr><td>Artista</td><td>Nombre</td><td>Grabada en</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
order by $i/artista ascending, $i/canción descending
return <tr><td>{data($i/artista)}</td><td>{data($i/canción)}</td>
     <td>{data($i/@almacenado)}</td></tr>
}
</table>
</body>
</html>
