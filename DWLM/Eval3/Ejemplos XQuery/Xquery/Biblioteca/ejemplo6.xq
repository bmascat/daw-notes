(: ejemplo 6
Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion".:)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $year in /bookstore/book/year
return <publicacion>{$year}</publicacion>,

"
----- solución 2 -----",

let $year := /bookstore/book/year
return <publicacion>{$year}</publicacion>