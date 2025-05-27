(: 1. Nombre de los artistas para los que no hay año de fallecimiento:)
"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\Artistas\artistas.xml")/artistas/artista
return $variable/pais,


"-----------prueba1----------",
for $x in doc("artistas.xml")//artista
where artista/fallecimiento !=""
return 
(<artista>
  {$x/nombreCompleto}
</artista>),
(: no se está recorriendo los nodos:)
"----- no sale nada ----",


(: seguimos buscando todos los artistas que tenga registrado un año de fallecimiento, es decri, todods los que tenga algo en el nodo :)
for $x in doc("artistas.xml")//artista
where $x/fallecimiento !=""
return 
(<artista>
  {$x/nombreCompleto}
</artista>),

"--- encontrados 3 -----",
for $x in doc("artistas.xml")//artista
where ($x/fallecimiento) = "1559"
return 
(<artista>
  {$x/nombreCompleto}
</artista>),
"----- si buscamos un año en concreto, debemos revisar que tipo de valor tiene ese regristro------",
(:año de fallecimiento = 1599:)
for $x in doc("artistas.xml")//artista
where number($x/fallecimiento) = 1660
return 
(<artista>
  {$x/nombreCompleto}
</artista>),
(: Tb se puede usar # where ($x/fallecimiento) = "1559" #:)

"-----------prueba2----------",
(: Buscar todos los nodos con artistas donde no tengamos año de fallecimiento registrado, de entre todos artistas :)

for $x in doc("artistas.xml")//artista
where not(/artista/fallecimiento)
return 
(<artista>
  {$x/nombreCompleto}
</artista>),

(:estas expresiones son muy traicioneras, puede que si obtengamos resultados aún estando mal construidas, ya que no se recorre el bucle, no se usa la variable en la iteració $x:)


"-----------prueba3----------",

for $x in doc("artistas.xml")//artista
where not($x/fallecimiento)
return 
(<artista>
  {$x/nombreCompleto}
</artista>,
$x/nombreCompleto/text()
)







