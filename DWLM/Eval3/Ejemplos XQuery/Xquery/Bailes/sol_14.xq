(: Mostrar el dinero que ganaría la profesora "Laura" (no conocemos su apellido) si se completaran todas las plazas de su baile :)
for $baile in /bailes/baile
where starts-with($baile/profesor, "Laura")
return <beneficio>{$baile/plazas * $baile/precio}</beneficio>,
"-------------------",
for $baile in /bailes/baile[starts-with(profesor, "Laura")]
return <beneficio>{$baile/plazas * $baile/precio}</beneficio>