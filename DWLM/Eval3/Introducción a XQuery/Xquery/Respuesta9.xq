(: 9. Marca y modelo de las impresoras tamaño A3 como UNICO tamaño. :)
"-----------INICIO----------",
for $x in doc("impresoras.xml")//impresora
return /$x/tamanios/data()
,

"-----------prueba1----------",
for $imp in doc("impresoras.xml")//impresora
where ($imp/marca = "EPSON" and ($imp//tamanio = "A4" or $imp//tamanio = "A2"))
return 
(<tamanhos>
  <marca>{/$imp/marca/text()}</marca>
  <tamanho>{/$imp/tamanios/tamanio/data()}</tamanho>
</tamanhos>)
,

"-----------prueba2----------",

for $imp in doc("impresoras.xml")//impresora
where ($imp/marca = "EPSON" and ($imp//tamanio = "A4" or $imp//tamanio = "A2"))
return 
(<tamanhos>
  {/$imp/marca}
  {/$imp/modelo}
  <tamanho>{/$imp/tamanios/tamanio/data()}</tamanho>
</tamanhos>)
,


"-----------prueba3----------",
 
for $imp in doc("impresoras.xml")//impresora
where ($imp//tamanio = "A4" and count($imp//tamanio) = 1)
return 
(<tamanhos>
  <marca>{/$imp/marca/text()}</marca>
  {/$imp/modelo}
  <tamanho>{/$imp/tamanios/tamanio/data()}</tamanho>
</tamanhos>)

(:
for $imp in doc("impresoras.xml")//impresora
where ($imp/marca = "EPSON" and ($imp//tamanio = "A3" and $imp//tamanio = "A5"))
return 
(<tamanhos>
  <marca>{/$imp/marca/text()}</marca>
  <tamanho>{/$imp/tamanios/tamanio/data()}</tamanho>
</tamanhos>)

:)

(:
let $var_impresora := ( 
for $i in $var_impresora/tamanios
where $i = ("A4" or "A2")
order by $i/tamanio ascending 
return 
(<tamanhos>
  <marca>{/$var_impresora/marca/text()}</marca>
  <tamanho>{/$i/tamanio/data()}</tamanho>
</tamanhos>)
:)