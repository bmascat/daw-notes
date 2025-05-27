(: ejemplo 12
Mostrar la suma total de los precios de los libros con la etiqueta "total". :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

let $libros := /bookstore/book
return <total>{sum($libros/price)}</total>

