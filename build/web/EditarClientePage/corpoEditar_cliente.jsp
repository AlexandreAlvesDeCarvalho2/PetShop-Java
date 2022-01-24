<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>


<%
    Cliente Cliente = new Cliente();
    DAOCliente ClienteDao = new DAOCliente();
    
    try {
        
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        
        Cliente.setId(Integer.parseInt(id));
        Cliente.setNome(nome);
        Cliente.setEmail(email);
        Cliente.setTelefone(telefone);
        ClienteDao.atualizarCliente(Cliente);
        
        
        out.print("Cliente Editado com sucesso" + Cliente.getEmail());
        out.print("<meta http-equiv='refresh' content='3, url=../index.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao editar cliente: " + erro);
        
    }
    
%>