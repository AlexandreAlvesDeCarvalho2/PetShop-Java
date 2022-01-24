<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   
   

    <head>
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
    </link> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <h1>Formulário Usuário</h1>
        <form method="POST" action="corpoEditar_cliente.jsp"> 
            <label for="id">id</label><br>
            <input type="number" name="id" value="<%=request.getParameter("id")%>"/><br
           
            <label for="nome">Nome</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br

                <label for="email">Email</label><br>
            <input type="email" name="email" value="<%=request.getParameter("email")%>"/><br

                <label for="telefone">Telefone</label><br>
            <input type="text" name="telefone" value="<%=request.getParameter("telefone")%>" /><br>

            <input type="submit" value="Enviar">

        </form>
    </body>
</html>
