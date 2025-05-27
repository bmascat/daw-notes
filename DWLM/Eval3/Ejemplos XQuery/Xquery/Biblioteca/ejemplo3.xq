(: ejemplo 3.
 Mostrar sólo el título de los libros cuyo precio sea menor o igual a 30.:)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $libro in /bookstore/book
where $libro/price <= 30
return $libro/title,

"
----- solución 2 -----",

for $libro in /bookstore/book[price<=30]
return $libro/title