(: 5.- Título y editorial de los libros de 2002. :)
"-----------INICIO----------",
for $x in doc("libros.xml")/biblioteca/libros/libro
where $x[@publicacion=2002]
return <libro>{$x/titulo, $x/editorial}</libro>,


"-----------prueba1----------",
for $x in doc("libros.xml")//autor
order by $x/apellido descending
return <personas>{$x/apellido}</personas>,

"-----------prueba2----------",
for $var_a in doc("libros.xml")//libro
let $var_b:= $var_a/autor
return <personas>{$var_b}</personas>,

(: FLWOR
FOR: varias veces
LET: varias veces
WHERE
ORDER BY 
RETURN
:)

"-----------prueba3----------",
for $var_a in doc("libros.xml")//libro
let $var_b:= $var_a/autor
return <libro>{$var_a/titulo, <autores>{count($var_b)} </autores>}</libro>,

"-------------contador-------------",
(: listar todos los valores del contador entre la etiqueta item:)
let $contador := (1 to 10)
return <item> {$contador}</item>,

(: contar el numero de elementos:)
let $cont := (1 to 10)
return <item> {count($cont)}</item>










