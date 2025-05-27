(: Mostrar el dinero que ganaría la profesora "Laura Mendiola" si se completaran todas las plazas de su baile, sabiendo que sólo tiene un baile :)
let $baile := /bailes/baile[profesor = "Laura Mendiola"]
return $baile/plazas * $baile/precio,
"-------------------"