package DAO;

import java.sql.Connection;
import MODEL.Produto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOProduto {

    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();

    public DAOProduto() throws ClassNotFoundException {
        conn = new Conexao().getConexão();
    }

    public void InserirProduto(Produto produto) {
        String sql = "Insert into tb_Produto(nome_produto, qtd_produto) values (?,?)";

        try {
            stmt = conn.prepareStatement(sql);


            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getQuantidade());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro inserir Produto: " + erro);
        }
    }

    // MÉTODO LISTAR ProdutoS
    public ArrayList<Produto> listarProdutos() {
        // variavel que recebe a instrucao SQL
        String sql = "SELECT * FROM tb_Produto";

        try {
            // CAMINHO DE CONEXÃO PARA O STATEMENT - st
            st = conn.createStatement();
            // passar para o result set o retorno d instrução sql
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_Produto"));
                produto.setNome(rs.getString("nome_Produto"));
                produto.setQuantidade(rs.getInt("qtd_produto"));
                lista.add(produto);

            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro ao executar a listagem Produto");

        }

        return lista;

    }

    // listar por nome
 public ArrayList<Produto> listarProdutosNome(String valor) {
        // variavel que recebe a instrucao SQL
        String sql = "SELECT * FROM tb_Produto WHERE nome_Produto LIKE '%"+ valor +"%'";

        try {
            //CAMINHO DE CONEXÃO PARA O STATEMENT - st
            st = conn.createStatement();
            //passar para o result set o retorno d instrução sql
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Produto Produto = new Produto();
                Produto.setId(rs.getInt("id_Produto"));
                Produto.setNome(rs.getString("nome_Produto"));
                Produto.setQuantidade(rs.getInt("qtd_produto"));
                lista.add(Produto);

            }

        } catch (SQLException erro) {
            throw new RuntimeException("Erro ao executar a listagem por nome do Produto");

        }

        return lista;

    }

    public void atualizarProduto(Produto produto) {

        try {
            String sql = "update tb_Produto set nome_produto = ? , qtd_produto = ? where id_produto = ?";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getQuantidade());
            stmt.setInt(3, produto.getId());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro atualizar Produto: " + erro);
        }
    }

    public void remover(int id) {
        try {
            String sql = ("DELETE FROM tb_Produto WHERE id_Produto = ?");
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (Exception erro) {
            throw new RuntimeException("Erro ao deletar Produto: " + erro);
        }

    }

}
