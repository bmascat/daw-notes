(: Mostrar la suma de los precios de los bailes de la sala 1 :)
let $baile := /bailes/baile[sala=1]
return <total_sala_1>{sum($baile/precio)}</total_sala_1>,
"-------------------"