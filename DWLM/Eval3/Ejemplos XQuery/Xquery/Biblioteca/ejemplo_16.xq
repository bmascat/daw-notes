(: ejemplo 16
MMostrar los libros escritos en años que terminen en "3". :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",
for $libro in /bookstore/book
where ends-with($libro/year, "3")
return $libro,

"
----- solución 2 -----",
for $libro in /bookstore/book[ends-with(year, "3")]
return $libro