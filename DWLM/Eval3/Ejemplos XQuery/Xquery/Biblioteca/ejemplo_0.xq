(: ejemplo HTMl
Mostrar los títulos en una tabla de HTML. :)

<html>
<title>"Libros de mi bookstore"</title>
<body> 
    <table border ="1">
    <caption> "Titulos de libros "</caption>
    
    
    {
      for $libro in /bookstore/book
      return 
        <tr>
          <td>{$libro/title/text()}</td>
        </tr>
    }
    
    
    </table>
</body>
</html>