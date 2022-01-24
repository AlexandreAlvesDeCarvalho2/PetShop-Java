<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta</h1>
        <form action="consultar_Produto.jsp" method="post">
            <label> Pesquisar por nome</label><br>
            <input type="text" name="name" value="" placeholder="Digite o Nome"/>
            <input type="submit" value="Pesquisar"/><br> </form> <br>
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
                                                  
                                                     
                                        
                                + "'>Editar</a></td>");
                        out.print("<td><a href='../ExcluirProduto/ExcluirProduto.jsp?"
                                
                                + "id=" + lista.get(i).getId()
                                + "&nome=" + lista.get(i).getNome()
                                + "&quantidade=" + lista.get(i).getQuantidade()
                                                     
                                                     
                                        
                                + "'>Excluir</a></td>");
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
                              
                                                     
                                        
                                + "'>Editar</a></td>");
                        out.print("<td><a href='../ExcluirProduto/ExcluirProduto.jsp?"
                                
                                + "id=" + lista.get(i).getId()
                                + "&nome=" + lista.get(i).getNome()
                                + "&quantidade=" + lista.get(i).getQuantidade()
                          
                                                     
                                        
                                + "'>Excluir</a></td>");
                        out.print("</tr>");
                    }

                }
                out.print("</table>");
            %>


    </body>
</html>