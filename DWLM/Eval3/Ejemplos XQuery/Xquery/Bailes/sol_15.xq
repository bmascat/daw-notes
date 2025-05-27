(: Mostrar el nombre del baile, su precio y el precio con un descuento del 15% para familias numerosas. Ordenar por el nombre del baile :)
for $baile in /bailes/baile
order by $baile/nombre
return 
   <baile>
      {$baile/nombre}
      <precio>{$baile/precio/text()}</precio>
      <fam_numerosa>{$baile/precio * 0.85}</fam_numerosa>
   </baile>,
"-------------------"