(: 6. Relación de impresoras laser:)
"-----------INICIO----------",
(: verificamos que accedemos a los datos:)
for $imp in doc("impresoras.xml")/impresoras/impresora
where //impresora/marca = "EPSON"
return concat($imp/modelo," [",$imp/peso,"]"),

(: Marca de impresoras de tipo "laser":)
"-----------prueba1----------",
for $x in doc("impresoras.xml")//marca
return 
(<marca_impresora>
  {/$x}
</marca_impresora>),


"-----------prueba2----------",

for $x in doc("impresoras.xml")//impresora
where $x/peso > 3.00
return $x/nombreCompleto/data(),

let $impres :=
  for $x in doc("impresoras.xml")//impresora
  where $x/peso > 3
  return $x
return concat("Numero de impresoras con peso > 3: ",count($impres)),

"-----------prueba3----------",
for $imp in doc("impresoras.xml")/impresoras/impresora
where @tipo = "láser"
return concat($imp/modelo," [",$imp/marca,"]"),
(:corregir atributo y variable:)

for $imp in doc("impresoras.xml")/impresoras/impresora
where $imp/@tipo = "láser"
return concat($imp/modelo," [",$imp/marca,"]")
