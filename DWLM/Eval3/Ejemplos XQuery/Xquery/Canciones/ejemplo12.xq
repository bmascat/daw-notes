(: Ejemplo 12, cuidado con los indices si ordenamos, van a cambiar el orden porque la ordenación se ejecuta después de iterar y crear la variable con la posición de cada nodo:)

<html>
<head>
<title>Ejemplo 12</title>
</head>

<body>
<ul>
{
for $i at $j in doc("canciones.xml")/MiBibliotecaMP3/archivo
where $i/puntuacion>8
order by $i/puntuacion
return <li>{$j}. {data($i/canción)}({data($i/puntuacion)}) </li>
}
</ul>
</body>
</html>
