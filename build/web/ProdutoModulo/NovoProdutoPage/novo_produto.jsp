<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
    </link> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <h1>Cadastrar Produto</h1>
        <form method="POST" action="adicionar_produto.jsp"> 
            <label for="nome">Nome</label><br>
            <input type="text" name="nome"/><br

                <label for="quantidade">Quantidade</label><br>
            <input type="number" name="quantidade"/><br>

            <input type="submit" value="Enviar">

        </form>
    </body>
</html>