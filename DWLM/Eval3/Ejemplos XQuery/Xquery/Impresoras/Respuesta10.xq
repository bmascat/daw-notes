(: 10. Modelo de las impresoras en red. :)
"-----------INICIO----------",
for $x in doc("impresoras.xml")//impresora
return /$x/enred
,

"-----------prueba1----------",
for $imp in doc("impresoras.xml")//impresora
where (exists($imp/enred) )
return $imp/modelo/text(),


"-----------prueba2----------",
for $imp in doc("impresoras.xml")//impresora
where  not(exists($imp/enred) )
return $imp/modelo/text()


 