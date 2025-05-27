(: Mostrar cuántas plazas en total oferta el profesor "Jesus Lozano" :)
let $baile := /bailes/baile[profesor = "Jesus Lozano"]
return <plazas>{sum($baile/plazas)}</plazas>,
"-------------------"