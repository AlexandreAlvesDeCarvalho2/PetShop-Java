<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>

<%
    Produto Produto = new Produto();
    DAOProduto ProdutoDAO = new DAOProduto();
    
    try {
        
        int id = (Integer.parseInt(request.getParameter("id")));

        ProdutoDAO.remover(id);
        
        out.print("Produto deletado com sucesso");
        out.print("<meta http-equiv='refresh' content='3; url=../ConsultarProdutoPage/consultar_produto.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao inserir novo produto: " + erro);
        
    }
    
%>