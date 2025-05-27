(: 8.- Título de los libros que no tienen versión electrónica. :)
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
where not($x/versionElectronica)
return$x/titulo









