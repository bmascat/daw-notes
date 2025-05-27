(: 1. Nombre del pais de todos los artistas:)
"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\Artistas\artistas.xml")/artistas/artista
return $variable/pais/data(),


"-----------prueba1----------",

for $x in doc("artistas.xml")/artistas/artista
return 
<artista_pais>
  {$x/nombreCompleto}
  {$x/pais}
</artista_pais>,

"-----------prueba2----------",
(: Las expresiones xquery en return deben ir entre {-}  :)
for $x in doc("artistas.xml")/artistas/artista
return 
<art>
  $x/nombreCompleto/text()
  [$x/nombreCompleto/text()]
  {$x/nombreCompleto/text()}
  {$x/pais}
</art>

