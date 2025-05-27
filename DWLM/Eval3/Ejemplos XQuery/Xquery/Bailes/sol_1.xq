(: Mostrar cada uno de los nombres de los bailes con la etiqueta "losbailes" :)
for $baile in doc("bailes.xml") /bailes/baile
return <losbailes>{$baile/nombre/text()}</losbailes>