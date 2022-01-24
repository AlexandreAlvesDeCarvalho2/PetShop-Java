<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>


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
        out.print("<meta http-equiv='refresh' content='3; url= ../index.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao inserir novo cliente: " + erro);
        
    }
    
%>