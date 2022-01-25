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
    Cliente Cliente = new Cliente();
    DAOCliente ClienteDao = new DAOCliente();
    
    try {
        
        int id = (Integer.parseInt(request.getParameter("id")));

        ClienteDao.remover(id);
        
        out.print("Cliente deletado com sucesso");
        out.print("<meta http-equiv='refresh' content='3; url=../ConsultarClientePage/consultar_cliente.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao inserir novo cliente: " + erro);
        
    }
    
%>


            </div>
        </div>
    </body>

</html>