(: ejemplo 11
Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA. :)

doc("biblioteca.xml")/bookstore/book/title,

"
----- solución 1 -----",

for $libro in /bookstore/book
let $precio_iva := ($libro/price * 1.21)
order by $precio_iva
return 
<libro>
  <titulo>{$libro/title/text()}</titulo>
  <precio>{$libro/price/text()} €</precio>
  <precio_iva>{$precio_iva} €</precio_iva>
</libro>,

"
----- solución 2 -----",

for $libro in /bookstore/book
order by $libro/price * 1.21
return 
<libro>
  <titulo>{$libro/title/text()}</titulo>
  <precio>{$libro/price/text()} €</precio>
  <precio_iva>{$libro/price * 1.21} €</precio_iva>
</libro>

