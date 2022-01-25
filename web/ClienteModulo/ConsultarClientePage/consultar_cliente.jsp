<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/059eb35bb8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../../CSS/style.css"</link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <div class="row">
            
            <div class="container border">
                <div class='rowStartLeft'> <a href='../../index.jsp'><i class="fas fa-arrow-left"> Voltar</i></a></div>
                <div class="rowStartLeft">
                    
                    <form action="consultar_cliente.jsp" method="post">
                        
                           
                            <div class="row2"> 
                            <input type="text" name="name" value="" placeholder="Buscar por Nome"/>
                            <button type="submit" /><i class="fas fa-search"></i></button>
                            <br> </form> <br>
                        </div>
                </div>

                <div class="Tabela">

                    <%
                        out.print("<table border='1'>");
                        out.print("<tr>");
                        out.print("<th>ID</th>");
                        out.print("<th>NOME</th>");
                        out.print("<th>EMAIL</th>");
                        out.print("<th>Telefone</th>");
                        out.print("<th>EDITAR</th>");
                        out.print("<th>EXCLUIR</th>");
                        out.print("</tr>");

                        DAOCliente cliente = new DAOCliente();
                        if (request.getParameter("name") == "" || request.getParameter("name") == null) {
                            ArrayList<Cliente> lista = cliente.listarClientes();
                            for (int i = 0; i < lista.size(); i++) {
                                out.print("<tr>");
                                out.print("<td>" + lista.get(i).getId() + "</td>");
                                out.print("<td>" + lista.get(i).getNome() + "</td>");
                                out.print("<td>" + lista.get(i).getEmail() + "</td>");
                                out.print("<td>" + lista.get(i).getTelefone() + "</td>");
                                out.print("<td><a href='../EditarClientePage/editar_cliente.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&email=" + lista.get(i).getEmail()
                                        + "&telefone=" + lista.get(i).getTelefone()
                                        + "'><i class='far fa-edit'> </i></a></td>");
                                out.print("<td><a href='../ExcluirCliente/ExcluirCliente.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&email=" + lista.get(i).getEmail()
                                        + "&telefone=" + lista.get(i).getTelefone()
                                        + "'><i class='far fa-trash-alt'></i></a></td>");
                                out.print("</tr>");
                            }

                        } else {
                            //pesquisa por nome
                            ArrayList<Cliente> lista = cliente.listarClientesNome(request.getParameter("name"));
                            for (int i = 0; i < lista.size(); i++) {
                                out.print("<tr>");
                                out.print("<td>" + lista.get(i).getId() + "</td>");
                                out.print("<td>" + lista.get(i).getNome() + "</td>");
                                out.print("<td>" + lista.get(i).getEmail() + "</td>");
                                out.print("<td>" + lista.get(i).getTelefone() + "</td>");
                                out.print("<td><a href='../EditarClientePage/editar_cliente.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&email=" + lista.get(i).getEmail()
                                        + "&telefone=" + lista.get(i).getTelefone()
                                        + "'><i class='far fa-edit'> </i></a></td>");
                                out.print("<td><a href='../ExcluirCliente/ExcluirCliente.jsp?"
                                        + "id=" + lista.get(i).getId()
                                        + "&nome=" + lista.get(i).getNome()
                                        + "&email=" + lista.get(i).getEmail()
                                        + "&telefone=" + lista.get(i).getTelefone()
                                        + "'><i class='far fa-trash-alt'></a></td>");
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