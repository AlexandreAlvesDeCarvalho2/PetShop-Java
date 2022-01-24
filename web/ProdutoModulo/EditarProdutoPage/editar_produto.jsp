<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   
   

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <h1>Editar Produto</h1>
        <form method="POST" action="corpoEditar_produto.jsp"> 
            <label for="id">id</label><br>
            <input type="number" name="id" value="<%=request.getParameter("id")%>"/><br>
           
            <label for="nome">Nome</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br>

            <label for="quantidade">quantidade</label><br>
            <input type="number" name="quantidade" value="<%=request.getParameter("quantidade")%>"/><br>

            <input type="submit" value="Enviar">
            <input type="submit" value="Enviar">

        </form>
    </body>
</html>
