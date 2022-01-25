<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/059eb35bb8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../../CSS/style.css"</link><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <script src="../../JS/index.js"></script>
        <div>
            <button id="darkmodebutton" onclick="darkmode()">LIGHT</button>
        </div>
        <div class="row">
            <div class="container border">
                <div class='rowStartLeft'> <a href='../../index.jsp'><i class="fas fa-arrow-left"> Voltar</i></a></div>
                <div class="rowStartLeft">
                    <form action="consultar_produto.jsp" method="post">


                        <div class="row2"> 
                            <input type="text" name="name" value="" placeholder="Buscar por Nome"/>
                            <button type="submit" /><i class="fas fa-search"></i></button>
                            <br>
                            </form>
                            <br>
                        </div>
                </div>
                <div class="Tabela">

                    <%
                        out.print("<table border='1'>");
                        out.print("<tr>");
                        out.print("<th>ID</th>");
                        out.print("<th>NOME</th>");
                        out.print("<th>Quantidade</th>");
                        out.print("<th>EDITAR</th>");
                        out.print("<th>EXCLUIR</th>");
                        out.print("</tr>");

                        DAOProduto Produto = new DAOProduto();
                        if (request.getParameter("name") == "" || request.getParameter("name") == null) {
                            ArrayList<Produto> lista = Produto.listarProdutos();
                            for (int i = 0; i < lista.size(); i++) {
                                out.print("<tr>");
                                out.print("<td>" + lista.get(i).getId() + "</td>");
                                out.print("<td>" + lista.get(i).getNome() + "</td>");
                                out.print("<td>" + lista.get(i).getQuantidade() + "</td>");
                                out.print("<td><a href='../EditarProdutoPage/editar_produto.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&quantidade=" + lista.get(i).getQuantidade()
                                        + "'><i class='far fa-edit'> </i></a></td>");
                                out.print("<td><a href='../ExcluirProduto/ExcluirProduto.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&quantidade=" + lista.get(i).getQuantidade()
                                        + "'><i class='far fa-trash-alt'></i></a></td>");
                                out.print("</tr>");
                            }

                        } else {
                            //pesquisa por nome
                            ArrayList<Produto> lista = Produto.listarProdutosNome(request.getParameter("name"));
                            for (int i = 0; i < lista.size(); i++) {
                                out.print("<tr>");
                                out.print("<td>" + lista.get(i).getId() + "</td>");
                                out.print("<td>" + lista.get(i).getNome() + "</td>");
                                out.print("<td>" + lista.get(i).getQuantidade() + "</td>");

                                out.print("<td><a href='../EditarProdutoPage/editar_produto.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&quantidade=" + lista.get(i).getQuantidade()
                                        + "'><i class='far fa-edit'> </i></a></td>");
                                out.print("<td><a href='../ExcluirProduto/ExcluirProduto.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&quantidade=" + lista.get(i).getQuantidade()
                                        + "'><i class='far fa-trash-alt'></i></a></td>");
                                out.print("</tr>");
                            }

                        }
                        out.print("</table>");
                    %>
                </div>
            </div>
        </div>


    </body>
</html>