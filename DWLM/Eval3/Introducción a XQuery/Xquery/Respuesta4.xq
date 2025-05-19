(: 4. Una lista HTML con el nombre de los artistas nacidos en España. :)
"-----------INICIO----------",
for $variable in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $variable/pais="España"
return $variable/nombreCompleto/data(),

"-----------prueba1----------",
for $variable in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
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
for $variable in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $variable/pais="España"
return $variable/nombreCompleto/text(),

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
for $var in doc("D:\XML\Xquery\artistas.xml")/artistas/artista
where $var/pais="España"
return 
<ul>
  {
    for $var in doc("artistas.xml")//artista
      where $var/pais="España"
   return
   <li>
     {$var/nombreCompleto/data()}
   </li>
 }
</ul>,
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