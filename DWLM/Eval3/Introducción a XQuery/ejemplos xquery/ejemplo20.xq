(: declaración de la función :)
declare function local:MinutosASegundos($tiempo as xs:decimal?) as xs:decimal?
{
($tiempo*60) 
};

(: llamada a la función :)
local:MinutosASegundos(14)

