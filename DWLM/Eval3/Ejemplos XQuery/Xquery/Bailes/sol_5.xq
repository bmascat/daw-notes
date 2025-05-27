(: Mostrar los nombres y la fecha de comienzo de los bailes que comiencen el mes de enero (utiliza para buscarlo la cadena de texto "/1/") :)
for $baile in doc("bailes.xml") /bailes/baile
  where contains($baile/comienzo, "/1/")
return 
   <baile>
      {$baile/profesor}
      {$baile/comienzo}
   </baile>,
"-------------------"