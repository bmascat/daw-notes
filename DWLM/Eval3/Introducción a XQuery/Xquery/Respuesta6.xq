(: 6. Numero de artistas nacidos antes de 1600:)
"-----------INICIO----------",
for $artista in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where //artista/fallecimiento = 1660
return concat($artista/nombreCompleto," [",$artista/pais,"]"),

(: 6. Modelo de impresoras de tipo "laser":)
"-----------prueba1----------",
for $x in doc("impresoras.xml")//marca
return 
(<marca_impresora>
  {/$x}
</marca_impresora>),


"-----------prueba2----------",

for $x in doc("artistas.xml")//artista
where $x/nacimiento < 1600
return $x/nombreCompleto/data(),

let $artistas :=
  for $x in doc("artistas.xml")//artista
  where $x/nacimiento < 1600
  return $x/nombreCompleto/data()
return concat("Numero de artistas: ",count($artistas)),

"-----------prueba3----------",
for $imp in doc("D:\XML\Xquery\impresoras.xml")/impresoras/impresora
where @tipo = "láser"
return concat($imp/modelo," [",$ímp/marca,"]"),
(:corregir atributo y variable:)

for $imp in doc("D:\XML\Xquery\impresoras.xml")/impresoras/impresora
where $imp/@tipo = "láser"
return concat($imp/modelo," [",$imp/marca,"]")
