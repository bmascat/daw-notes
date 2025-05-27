(: ejemplo 17
Mostrar los libros cuya categoría empiece por "C". :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",
for $libro in /bookstore/book
where starts-with($libro/@category, "C")
return $libro,


"
----- solución 2 -----",
for $libro in /bookstore/book[starts-with(@category, "C")]
return $libro