(: ejemplo 2
 Mostrar los libros cuyo precio sea menor o igual a 30.
Primero incluyendo la condición en la cláusula "where" y luego en la ruta del XPath.:)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $libro in /bookstore/book
where $libro/price <= 30
return $libro,

"
----- solución 2 -----",
for $libro in /bookstore/book[price<=30]
return $libro