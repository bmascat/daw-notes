(: ejemplo 1 Mostrar los títulos de los libros con la etiqueta "titulo" :)
doc("biblioteca.xml")/bookstore/book/title,

"----- solución -----",

for $titulo in /bookstore/book/title/text()
return <titulo>{$titulo}</titulo>