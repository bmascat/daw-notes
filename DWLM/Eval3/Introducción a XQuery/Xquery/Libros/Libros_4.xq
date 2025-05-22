(: 4.- Una lista HTML con el título de los libros de la editorial “O'Reilly” ordenados por título. :)
"-----------INICIO----------",
for $x in doc("../libros.xml")/biblioteca/libros/libro
return concat(" - ",$x/editorial/data()),


doc("../libros.xml")/biblioteca/libros/libro[paginas>400]/titulo,

let $a := doc("../libros.xml")/biblioteca/libros/libro[paginas>400]/autor
return <personas>{$a/apellido}</personas>,

for $x in doc("../libros.xml")/biblioteca/libros/libro[paginas>400]/autor
order by $x/apellido ascending
return <personas>{$x/apellido}</personas>,
"-----------prueba1----------",
(:
let $a := doc("libros.xml")/biblioteca/libros/libro[paginas>400]/autor
order by $a/apellido ascending
return <personas>{$a/apellido}</personas>,

:)

for $x in doc("../libros.xml")/biblioteca/libros/libro[paginas<500]
return concat("Total: ", count($x/editorial/data())),

"-----------prueba2----------",
for $x in doc("../libros.xml")/biblioteca/libros/libro[paginas<500]
return concat("Total: ", count($x/editorial/data())),

(: FLWOR
FOR: varias veces
LET: varias veces
WHERE
ORDER BY 
RETURN
:)

"-----------prueba3----------",
<ul>
{
for $x in doc("../libros.xml")/biblioteca/libros/libro
where $x/editorial = "O'Reilly"
order by $x/titulo
return <li>{data($x/titulo)}</li>
}
</ul>









