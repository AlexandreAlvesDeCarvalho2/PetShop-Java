<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>



    <head>
        </link> 
        <script src="https://kit.fontawesome.com/059eb35bb8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../../CSS/style.css"</link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="row">
               
            <div class="containerFormulario border">
                <h1>Editar Cliente</h1>
                <form method="POST" action="corpoEditar_cliente.jsp"> 
                    <label for="id">id</label><br>
                    <input type="number" name="id" value="<%=request.getParameter("id")%>"/><br

                        <label for="nome">Nome</label><br>
                    <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br

                        <label for="email">Email</label><br>
                    <input type="email" name="email" value="<%=request.getParameter("email")%>"/><br

                        <label for="telefone">Telefone</label><br>
                    <input type="text" name="telefone" value="<%=request.getParameter("telefone")%>" /><br>

                    <input type="submit" value="Enviar"><br><br>
                    
                     <div class='rowStartLeft'> <a href='../../index.jsp'><i class="fas fa-arrow-left"> Voltar</i></a></div>


                </form>
            </div>
        </div>
    </body>
</html>
