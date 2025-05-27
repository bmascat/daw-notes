(: Mostrar todos los datos de cada baile excepto la fecha de comienzo y de fin. :)
for $baile in /bailes/baile
return <baile>{$baile/* except $baile/comienzo except $baile/fin}</baile>,
"-------------------"