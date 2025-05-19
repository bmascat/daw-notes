<html>
<head>
<title>Ejemplo 17</title>
</head>
<body>
<ol>
{
(: canciones de grupos cuyo nombre empieza por "M" y 
   NO tienen puntuación de 9	:)
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i[substring(artista,1,1)="M"] and not($i/puntuacion=9)
order by $i/puntuacion
return <li> {data($i/canción)}({data($i/artista)}) </li>
}
</ol>
</body>
</html>
