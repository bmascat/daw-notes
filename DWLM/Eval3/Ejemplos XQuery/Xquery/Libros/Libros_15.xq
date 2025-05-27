(: 6.- Título y editorial de los libros con más de un autor. :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
return concat(" - ",$x/editorial/data()),

(: Siempre es bueno tener una consulta para saberque todo funciona, como la de arriba, antes de pasar a buscar la solución:)

"-----------RESULTADO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
where count($x/autor)>1
return <libro>{$x/titulo, $x/editorial,<anno> {data($x/@publicacion)}</anno>}</libro>,

"-----------prueba1----------",

for $x at $i in doc("libros.xml")/biblioteca/libros/libro
  return concat("Indice: ",$i," y cantidad: ", count($x/editorial/data())," ->", $x/autor/nombre) ,
"-----------prueba2----------",

for $x at $i in doc("libros.xml")/biblioteca/libros/libro
order by $x/editorial ascending
  return (concat("Indice: ",$i," y cantidad: ", count($x/editorial/data())," ->", $x/autor/nombre) 
  
)













