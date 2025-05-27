(: ejemplo 8
Mostrar cuántos libros hay, y etiquetarlo con "total".:)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

let $num_libro := count(/bookstore/book)
return <total>{$num_libro}</total>

