(: 1. Nombre del pais de todos los artistas:)
artistas/artista/nombreCompleto,
"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\Artistas\artistas.xml")/artistas/artista
return $variable/pais,


"-----------prueba1----------",

for $art in doc("artistas.xml")//artista
return 
<artista>
  {$art/nombreCompleto}
  {$art/pais}
</artista>







