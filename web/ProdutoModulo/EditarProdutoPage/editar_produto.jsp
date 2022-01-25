<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>



    <head>
        <script src="https://kit.fontawesome.com/059eb35bb8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../../CSS/style.css"</link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <script src="../../JS/index.js"></script>
        <div>
            <button id="darkmodebutton" onclick="darkmode()">LIGHT</button>
        </div>


        <div class="row">

            <div class="containerFormulario border">

                <h1>Editar Produto</h1>
                <form method="POST" action="corpoEditar_produto.jsp"> 
                    <label for="id">id</label><br>
                    <input type="number" name="id" value="<%=request.getParameter("id")%>"/><br>

                    <label for="nome">Nome</label><br>
                    <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br>

                    <label for="quantidade">quantidade</label><br>
                    <input type="number" name="quantidade" value="<%=request.getParameter("quantidade")%>"/><br>

                    <input type="submit" value="Enviar"><br><br>

                    <div class='rowStartLeft'> <a href='../../index.jsp'><i class="fas fa-arrow-left"> Voltar</i></a></div>



                </form>
            </div>
        </div>

    </body>
</html>
