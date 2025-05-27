(: ejemplo 4
Mostrar sólo el título sin atributos de los libros cuyo precio sea menor o igual a 30.:)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $libro in /bookstore/book[price<=30]
return <title>{$libro/title/text()}</title>