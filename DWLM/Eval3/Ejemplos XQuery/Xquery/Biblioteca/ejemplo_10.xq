(: ejemplo 10
Mostrar el precio mínimo y máximo de los libros. :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

let $max := max(/bookstore/book/price), 
    $min := min(/bookstore/book/price)
return
<resultado>
  <max>{$max}</max>
  <min>{$min}</min>
</resultado>

