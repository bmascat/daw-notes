<html lang="en">
<body>
    <h1>"Personal >=65 años"</h1>
<table>
   <thead>
      <tr>
         <td>
            Codigo
         </td>
         <td>
            Nombre
         </td>
         <td>
           Edad
         </td>
      </tr>
   </thead>
   <tbody>
     {for $x in doc("personas.xml")/personas/persona
        where number($x/edad) >=65
        order by number($x/edad) descending
        return <tr>
                 <td>{$x/@codPER/data()}</td>
                 <td>{$x/nombre/data()}</td>
                 <td>{$x/edad/data()}</td>
              </tr>
      }
    </tbody> 
</table>
</body>
</html>

