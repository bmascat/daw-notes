<html>
<head>
<title>Ejemplo 10</title>
</head>

<body>
<table>
<caption>CANCIONES DE METALLICA </caption>
<tr><td>Canción</td><td>Disco</td><td>Grabada en</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i/artista="Metallica"
order by $i/puntuacion
return <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td>
     <td>{data($i/@almacenado)}</td></tr>
}
</table>
</body>
</html>
