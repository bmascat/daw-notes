(: Mostrar el dinero que ganaría el profesor "Jesus Lozano" si se completaran todas las plazas de su baile, pero mostrando el beneficio de cada baile por separado :)
for $baile in /bailes/baile
where $baile/profesor = "Jesus Lozano"
return <beneficio>{$baile/plazas * $baile/precio}</beneficio>,
"-------------------"