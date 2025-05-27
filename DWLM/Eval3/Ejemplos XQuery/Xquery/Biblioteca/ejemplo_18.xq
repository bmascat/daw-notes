(: ejemplo 18
Mostrar los libros que tengan una "X" mayúscula o minúscula en el título ordenados de manera descendente. :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",
for $libro in /bookstore/book
where contains($libro/title, "x") or contains($libro/title, "X")
order by $libro/title descending
return $libro,

"
----- solución 2 -----",
for $libro in /bookstore/book
where contains(lower-case($libro/title), "x")
order by $libro/title descending
return $libro,

"
----- solución 3 -----",
for $libro in /bookstore/book[contains(lower-case(title), "x")]
order by $libro/title descending
return $libro