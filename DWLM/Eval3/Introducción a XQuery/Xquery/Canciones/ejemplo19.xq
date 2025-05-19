<html>
<head>
<title>Ejemplo 19</title>
</head>

<body>
<table>
<caption>CANCIONES POR DISCO </caption>
<tr><td>Artista</td><td>Nombre</td><td>Grabada en</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
let $numero := (substring($i/@almacenado,6,1))
order by $i/artista ascending, $i/canción descending
return <tr><td>{upper-case(data($i/artista))}</td><td>{data($i/canción)}</td>
     <td>{$numero}</td></tr>
}
</table>
</body>
</html>
