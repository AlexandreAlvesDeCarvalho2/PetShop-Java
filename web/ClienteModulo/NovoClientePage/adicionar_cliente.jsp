<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>


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
                    Cliente cliente = new Cliente();
                    DAOCliente ClienteDao = new DAOCliente();

                    try {

                        String nome = request.getParameter("nome");
                        String email = request.getParameter("email");
                        String telefone = request.getParameter("telefone");

                        cliente.setNome(nome);
                        cliente.setEmail(email);
                        cliente.setTelefone(telefone);

                        ClienteDao.InserirCliente(cliente);

                        out.print("Cliente inserido com sucesso");
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