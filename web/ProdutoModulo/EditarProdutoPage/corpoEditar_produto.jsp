<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>


<%
    Produto produto = new Produto();
    DAOProduto ProdutoDAO = new DAOProduto();
    
    try {
        
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String quantidade = request.getParameter("quantidade");
 
        
        produto.setId(Integer.parseInt(id));
        produto.setNome(nome);
        produto.setQuantidade(Integer.parseInt(quantidade));
        ProdutoDAO.atualizarProduto(produto);
        
        
        out.print("Produto Editado com sucesso");
        out.print("<meta http-equiv='refresh' content='3, url= ../ConsultarProdutoPage/consultar_produto.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao editar produto: " + erro);
        
    }
    
%>