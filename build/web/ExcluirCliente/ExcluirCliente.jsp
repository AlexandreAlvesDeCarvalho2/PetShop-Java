<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulário Usuário</h1>
        <form method="POST" action="corpoExcluirCliente.jsp"> 
            <label for="id">Id</label><br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br

            <label for="nome">Nome</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br

            <label for="email">Email</label><br>
            <input type="email" name="email" value="<%=request.getParameter("email")%>"/><br

            <label for="telefone">Telefone</label><br>
            <input type="text" name="telefone" value="<%=request.getParameter("telefone")%>"/><br>  

            <input type="submit" value="Excluir">

        </form>
    </body>
</html>
