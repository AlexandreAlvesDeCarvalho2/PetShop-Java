<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>


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
        throw new RuntimeException("Erro ao inserir novo produto: " + erro);
        
    }
    
%>