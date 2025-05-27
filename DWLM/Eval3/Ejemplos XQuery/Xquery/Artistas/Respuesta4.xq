(: 4. Una lista HTML con el nombre de los artistas nacidos en España. :)
"-----------INICIO----------",
for $variable in doc("artistas.xml")/artistas/artista
where $variable/pais="España"
return $variable/nombreCompleto/data(),

(: probar siempre que teneis resultados sobre la BBDD:)

/artistas/artista/nombreCompleto,

(: tb. consulta Xquery o en BaseX activar en el menu opciones "Ejecucion en tiempo real":)

"-----------prueba1----------",
(: construir la consulta y el esqueleto, en 2 pasos:)
for $variable in doc("artistas.xml")/artistas/artista
where $variable/pais="España"
return $variable/nombreCompleto/text(),
<ul>
  {
    for $var in doc("artistas.xml")//artista
      where $var/pais="España"
   return
   <li>
     $var/nombreCompleto/data()
   </li>
 }
</ul>
,



"-----------prueba2----------",

(: en 3 es solo para el ejemplo, este sería el adecuado... seguir una secuencia ordenada :)
(: Paso 1 :)
for $variable in doc("artistas.xml")/artistas/artista
where $variable/pais="España"
return $variable/nombreCompleto/text(),

(: Paso 2 :)
"
Presentando la solución:",
for $var in doc("artistas.xml")//artista
  where $var/pais="España"
return
<ul>
  {
   <li>
     {$var/nombreCompleto/data()}
   </li>
 }
</ul>,

"
-----------prueba3----------
",
<html>
<ul>
  {
    for $var in doc("artistas.xml")//artista
      where $var/pais="España"
   return
   <li>
     {$var/nombreCompleto/data()}
   </li>
 }
</ul>
</html>,

"
-----------prueba4----------
",
for $var in doc("artistas.xml")//artista
  where $var/pais="España"
  order by $var/nacimiento descending
return
     {$var/nombreCompleto/data(): $var/nacimiento/data()},

for $var in doc("artistas.xml")//artista
  where $var/pais="España"
  order by $var/nacimiento ascending
return
<ol>
  {
   <li>
     {$var/nombreCompleto/data()}
   </li>
 }
</ol>