(: 1. Nombre del pais de todos los artistas:)
artistas/artista/nombreCompleto,

"-----------prueba1----------",


(: for $x in doc("D:\XML\Xquery\Artistas\artistas.xml")/artistas/artista :)
for $x in doc("artistas.xml")/artistas/artista
return 
<art>
  {$x/nombreCompleto}
  {$x/pais}
</art>,


"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\Artistas\artistas.xml")/artistas/artista
return $variable/pais





