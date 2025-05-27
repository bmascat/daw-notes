(: 4.- Una lista HTML con el título de los libros de la editorial “O'Reilly” ordenados por título. :)
"-----------INICIO----------",
<ul>
{
for $x in doc("libros.xml")/biblioteca/libros/libro
where $x/editorial = "O'Reilly"
order by $x/titulo
return <li>{data($x/titulo)}</li>
}
</ul>,

"-------",
//libro[editorial="O'Reilly"]/titulo,

(: editar la base da datos pinchando sobre le etiqueta con el titulo Xquery y quitar el espacio: los resultados cambian entre las 1ª y 3º:)
"-------",
<ul>
{
for $x in /biblioteca/libros/libro
where $x/editorial = "O'Reilly"
order by $x/titulo
return <li>{data($x/titulo)}</li>
}
</ul>




