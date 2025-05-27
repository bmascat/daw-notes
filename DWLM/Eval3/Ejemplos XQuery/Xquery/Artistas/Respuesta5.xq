(: 5. Numero de artistas nacidos antes de 1600:)
"-----------INICIO----------",
for $variable in doc("artistas.xml")/artistas/artista
return $variable/pais,


"-----------prueba1----------",
for $x in doc("artistas.xml")//artista
where $x/nacimiento < 1600
return 
(<artista>
  {$x/nombreCompleto}
</artista>),


"-----------prueba2----------",

for $x in doc("artistas.xml")//artista
where $x/nacimiento < 1600
return $x/nombreCompleto/data(),

let $artistas :=
  for $x in doc("artistas.xml")//artista
  where $x/nacimiento < 1600
  return $x/nombreCompleto/data()
return concat("Numero de artistas: ",count($artistas)),

let $artistas :=
(
  for $x in doc("artistas.xml")//artista
  where $x/nacimiento < 1600
  return $x
)
order by $artistas /nombre  
return $artistas/data(),

"-----ULTIMA------",
let $artistas :=
(
  for $x in doc("artistas.xml")//artista
  where $x/nacimiento < 1600
  return $x
)
order by $artistas/artista/nacimiento descending 
return $artistas


