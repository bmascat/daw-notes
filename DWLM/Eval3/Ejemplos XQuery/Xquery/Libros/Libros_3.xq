(: 3.- El título (sin etiquetas) de todos los libros de menos de 100 páginas :)

(: Se pueden hacer consultas xpath directamete en la barra superior con la selección = xQuery y tambien dierectamente en el script :)
"Resultado expresión 1",
/biblioteca/libros/libro/editorial,
"Resultado expresión 2",
//libros//titulo,
" ",
"-----------INICIO----------",
(:Formato de salida =  titulo - editorial :)
for $x in doc("libros.xml")/biblioteca/libros/libro
return concat($x/titulo, " - ",$x/editorial/data()),

(: Recordar que se pueden anidar instrucciones, encapsulando el resultado hacia otra, por ejemplo un let:
  -- FLWOR --
LET: varias veces
 {
  FOR: varias veces
  
  WHERE
  ORDER BY
  RETURN
  }
RETURN
Se pueden anidar
:)

(:Retornar todos los elementos libro cuya fecha de publicación sea menor a 2003 -> Salida como xml :)
for $x in doc("libros.xml")//libro
return ($x[@publicacion<2003]),



"-----------prueba1----------",
for $x in doc("libros.xml")//libro
order by $x[@publicacion] descending
where  $x[@publicacion < 2015]

return ($x/titulo,<a>{data($x/@publicacion)}</a>),


"-----------prueba2----------",
let $lista:= (
for $x in doc("libros.xml")//libro
where  $x[@publicacion < 2005]
return (<titulos>
          {$x/titulo}
          <año>{data($x/@publicacion)}</año>
       </titulos>)
)
order by number($lista/titulos/año) ascending
return $lista/año,

"------------",
let $lista:= (
for $x in doc("libros.xml")//libro
where  $x[@publicacion < 2010]
return (<titulos>
          {$x/titulo}
          <año>{data($x/@publicacion)}</año>
       </titulos>)
)
order by ($lista/titulos/titulo) descending
return $lista/titulo

