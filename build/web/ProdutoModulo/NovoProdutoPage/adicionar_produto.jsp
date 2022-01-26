<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>

<html>
    <head>
        </link> 
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
        <div class="rowSucesso">
            <div class="ContainerSucesso border">
                <%
                    Produto produto = new Produto();
                    DAOProduto produtoDao = new DAOProduto();

                    try {

                        String nome = request.getParameter("nome");
                        String quantidade = request.getParameter("quantidade");

                        produto.setNome(nome);
                        produto.setQuantidade(Integer.parseInt(quantidade));

                        produtoDao.InserirProduto(produto);

                        out.print("Produto inserido com sucesso");
                        out.print("<meta http-equiv='refresh' content='3; url= ../../index.jsp'/>");

                    } catch (Exception erro) {
                        out.print("<p style='color:red;'> OPS! Alguma coisa deu errado!<br>"
                                + "Verifique se você digitou corretamente as informações</p>");
                        out.print("<meta http-equiv='refresh' content='4; url=../../index.jsp'/>");

                    }

                %>
            </div>
        </div>
    </body>

</html>