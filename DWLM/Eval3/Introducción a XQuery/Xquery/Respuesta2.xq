(: 2. Nombre (sin etiquetas) de todos los artistas que nacieron antes de 1500:)
"-----------prueba1----------",
for $x in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return  $x/nombreCompleto/text(),

for $x in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return $x/nombreCompleto/data(),



"-----------prueba2----------",
(:solo nombre con cambio de etiqueta:)
for $x in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return ("Nombre1:",$x/nombreCompleto/text()),

for $x in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return concat("Nombre2: ",$x/nombreCompleto/text()),

for $x in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return ["Nombre3: ",$x/nombreCompleto/text()],


"
-----------prueba3----------
",
for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return 
  ($x/nombreCompleto/text(),
<art>
  {$x/nombreCompleto/data()}
</art>),

for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return 
  ($x/nombreCompleto/text(),":",
<art>
  {$x/nombreCompleto/data()}
</art>),

for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return {
  $x/nombreCompleto/text():
<art>
  {$x/nombreCompleto/data()}
</art>},

for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return 
  {$x/nombreCompleto/text():
<art>
  {$x/nombreCompleto/data()}
</art>}