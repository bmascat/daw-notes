(: 1. Nombre del pais de todos los artistas:)
"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
return $variable/pais/data(),


"-----------prueba1----------",

for $x in doc("artistas.xml")/artistas/artista
return 
<art>
  {$x/nombreCompleto}
  {$x/pais}
</art>,

"-----------prueba2----------",
for $x in doc("artistas.xml")/artistas/artista
return 
<art>
  $x/nombreCompleto/text()
  [$x/nombreCompleto/text()]
  {$x/nombreCompleto/text()}
  {$x/pais}
</art>

