(: Mostrar en una tabla de HTML los nombres de los bailes y su profesor, cada uno en una fila :)
<table> {
  for $baile in doc(bailes.xml)/bailes/baile
  return <tr>
            <td>{$baile/nombre/text()}</td>
            <td>{$baile/profesor/text()}</td>
        </tr>
} </table>,
"-------------------"