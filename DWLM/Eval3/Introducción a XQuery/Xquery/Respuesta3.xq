(: 1. Nombre de los artistas para los que no hay año de fallecimiento:)
"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
return $variable/pais,


"-----------prueba1----------",
for $x in doc("artistas.xml")//artista
where artista/fallecimiento !=""
return 
(<artista>
  {$x/nombreCompleto}
</artista>),





for $x in doc("artistas.xml")//artista
where $x/fallecimiento !=""
return 
(<artista>
  {$x/nombreCompleto}
</artista>),

for $x in doc("artistas.xml")//artista
where $x/fallecimiento =""
return 
(<artista>
  {$x/nombreCompleto}
</artista>),

"-----------prueba2----------",

for $x in doc("artistas.xml")//artista
where not(/artista/fallecimiento)
return 
(<artista>
  {$x/nombreCompleto}
</artista>),

"-----------prueba3----------",

for $x in doc("artistas.xml")//artista
where not($x/fallecimiento)
return 
(<artista>
  {$x/nombreCompleto}
</artista>,
$x/nombreCompleto/text()
)







