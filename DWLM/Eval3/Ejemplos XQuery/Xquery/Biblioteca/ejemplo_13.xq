(: ejemplo 13
Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con la suma de los precios. :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",
(: usar dos instrucciones FLOWR, primero para recorre todos los libros :)
<libros>
{
  for $libro in /bookstore/book
  return $libro/price
}

{
  let $libros := /bookstore/book
  return <total>{sum($libros/price)}</total>
}
</libros>

(: y terminar calculando el total del precio de todos los libros, realizando la consulta entre la etiqueta <libros> :)
