<personas>
{for $x in doc("personas.xml")/personas/persona
        where number($x/edad)>=65
        return <persona>{$x/@codPER}
                 {$x/seccion}
                 {$x/nombre}
                 {$x/edad}
              </persona>
            }
</personas>
