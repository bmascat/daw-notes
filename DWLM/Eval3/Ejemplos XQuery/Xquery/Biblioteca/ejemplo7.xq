(: ejemplo 7
Mostrar los libros ordenados primero por "category" y luego por "title" en una sola consulta.:)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $libro in /bookstore/book
order by $libro/@category,$libro/title
return $libro

(: Hay dos ordenaciones, primero por categoria y luego por titulo :)
(: Si ejecutas la consulta XPATH se puede ver el resultado de la doble ordenacion con los cambios :)
(: bookstore/book[@category] :)