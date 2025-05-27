(: ejemplo 20
Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétalos con "año". :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",
for $año in distinct-values(/bookstore/book/year)
return <año>{$año}</año>