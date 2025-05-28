<html lang="en">
<body>
   <table border = "1">
    <caption>"Personal >=65 años"</caption>
         <thead>
            <tr>
               <th>
                  Codigo
               </th>
               <th>
                  Nombre
               </th>
               <th>
               Edad
               </th>
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

