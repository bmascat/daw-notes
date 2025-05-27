(: 1. Nombre del pais de todos los artistas:)
"-----------INICIO----------",
for $variable in doc("artistas.xml")/artistas/artista
return $variable/pais,


"-----------prueba1----------",

for $x in doc("artistas.xml")/artistas/artista
return 
<artista_etq>
  {($x/@cod)}
  {$x/nombreCompleto}
  {$x/pais}
</artista_etq>








