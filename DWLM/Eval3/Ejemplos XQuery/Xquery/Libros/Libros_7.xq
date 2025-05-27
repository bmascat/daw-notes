(: 7.- Título y editorial de los libros que tienen versión electrónica. :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return concat(" - ",$x/editorial/data()),

(: FLWOR
FOR: varias veces
LET: varias veces
WHERE
ORDER BY 
RETURN
:)

"-----------prueba1----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
where $x/versionElectronica
return <libro>{$x/titulo, $x/editorial}</libro>









