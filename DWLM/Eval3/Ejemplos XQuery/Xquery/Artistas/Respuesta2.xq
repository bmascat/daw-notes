(: 2. Nombre (sin etiquetas) de todos los artistas que nacieron antes de 1500:)
"-----------prueba1----------",
for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return  $x/nombreCompleto/text(),

for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return $x/nombreCompleto/data(),



"-----------prueba2----------",
(:OBSERVAR los cambios sobre la misma consulta, Nombre1-2-3:)
(:solo con un cambio de marcadores en el return, el resultado cambia aun siendo la misma consulta... cuidado con los caracters de función:)

for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return ("Nombre1: ",$x/nombreCompleto/text()),
(:Salen dos lineas, son dos respuestas separadas por una coma! :)


for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return concat("Nombre2: ",$x/nombreCompleto/text()),
(: Al usar la función concat, el resultado se trata como una cadena y sale lo esperado, no 2 respuestas !! :)


for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return ["Nombre3: ",$x/nombreCompleto/text()],
(: Si se usan corchetes, square brackets, sale una linea pero con comillas:)

"
-----------prueba3----------
",
for $x in doc("artistas.xml")/artistas/artista
where $x/nacimiento < 1500
return 
  ($x/nombreCompleto/text(),
<art>
  {$x/nombreCompleto/data()}
</art>)




