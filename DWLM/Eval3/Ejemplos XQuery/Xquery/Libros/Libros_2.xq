(: 1.- El título (sin etiquetas) de todos los libros de menos de 100 páginas :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return concat($x/titulo, " - ",$x/editorial/data()),

(: Ejemplo de instrucciones para las consultas. Solo oblicatorio una instrucción FOR/let y el RETURN:
 --FLWOR--
FOR: varias veces
LET: varias veces
WHERE
ORDER BY
RETURN

Se pueden anidar
:)

"-----------prueba1----------",
(: Titulos de los libros con un numero de paginas menor a 100 :)
for $x in doc("libros.xml")/biblioteca/libros/libro
where number($x/paginas) < 100
return data($x/titulo)









