(: 7. Marca y modelo de las impresoras con más de un tamaño. :)
"-----------INICIO----------",
for $x in doc("impresoras.xml")//impresora
return /$x/marca/data()
,

"-----------prueba1----------",
for $x in doc("impresoras.xml")//marca
return 
(<marca_impresora>
  {/$x}
</marca_impresora>),


"-----------prueba2----------",

for $imp in doc("impresoras.xml")//impresora
where count($imp/tamanios/tamanio) > 1
return /$imp/modelo/data()
,
for $imp in doc("impresoras.xml")//impresora
where count($imp//tamanio) > 1
return 
<impresora>
  {$imp/marca}
  {$imp/modelo}
</impresora>,


"-----------prueba3----------",

for $imp in doc("impresoras.xml")//impresora
where count($imp//tamanio) > 1
return 
<impresora>
  <marca>{$imp/marca/text()}</marca>
  <modelo>{$imp/modelo/text()}</modelo>
</impresora>
