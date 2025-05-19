(: 1.- El título (sin etiquetas) de todos los libros de menos de 100 páginas :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return concat($x/titulo, " - ",$x/editorial/data()),

(: FLWOR
FOR: varias veces
LET: varias veces
WHERE
ORDER BY
RETURN

Se pueden anidar
:)

"-----------prueba1----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
where number($x/paginas) < 100
return data($x/titulo)









