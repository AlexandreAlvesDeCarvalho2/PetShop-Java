<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<%
    Cliente Cliente = new Cliente();
    DAOCliente ClienteDao = new DAOCliente();
    
    try {
        
        int id = (Integer.parseInt(request.getParameter("id")));

        ClienteDao.remover(id);
        
        out.print("Cliente deletado com sucesso");
        out.print("<meta http-equiv='refresh' content='3; url=../../ConsultarClientePage/consultar_cliente.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao inserir novo cliente: " + erro);
        
    }
    
%>