(: ejemplo 14
Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes. :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",
for $libro in /bookstore/book
return 
  <libro>
    {$libro/title}
    <autores>{count($libro/author)}</autores>
  </libro>

(: contar autores usando la variable que los recorre al completo :)