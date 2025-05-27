(: ejemplo 5
Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con "lib2005":)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $libro in /bookstore/book
where $libro/year=2005
return <lib2005>{$libro/title,$libro/author}</lib2005>,

"
----- solución 2 -----",

for $libro in /bookstore/book
where $libro/year=2005
return <lib2005>{$libro/title}{$libro/author}</lib2005>