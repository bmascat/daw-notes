(: 3.- El título (sin etiquetas) de todos los libros de menos de 100 páginas :)
/biblioteca/libros/libro/editorial,
//libros//titulo,

"-----------INICIO----------",
for $x in doc("../libros.xml")/biblioteca/libros/libro
return concat($x/titulo, " - ",$x/editorial/data()),

(: FLWOR
FOR: varias veces
LET: varias veces
WHERE
ORDER BY
RETURN

Se pueden anidar
:)

for $x in doc("../libros.xml")//libro
return ($x[@publicacion<2003]),

for $x in doc("../libros.xml")//libro
where number(($x[@publicacion])) < 2002
order by number($x[@publicacion])
return ($x/titulo,<a>{data($x/@publicacion)}</a>),

"-----------prueba1----------",
for $x in doc("../libros.xml")/biblioteca/libros/libro
where number($x/paginas) < 100
return data($x/titulo)









