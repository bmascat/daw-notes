(: 6.- Título y editorial de los libros con más de un autor. :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return concat(" - ",$x/editorial/data()),


  for $x at $i in doc("libros.xml")/biblioteca/libros/libro
  return concat("Total: ", count($x/editorial/data())),

(: FLWOR
FOR: varias veces
LET: varias veces
WHERE
ORDER BY 
RETURN
:)

"-----------prueba1----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
where count($x/autor)>1
return <libro>{$x/titulo, $x/editorial,<anno> {data($x/@publicacion)}</anno>}</libro>









