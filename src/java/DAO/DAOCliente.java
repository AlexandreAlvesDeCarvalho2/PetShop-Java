package DAO;

import java.sql.Connection;
import MODEL.Cliente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOCliente {

    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();

    public DAOCliente() throws ClassNotFoundException {
        conn = new Conexao().getConexão();
    }

    public void InserirCliente(Cliente cliente) {
        String sql = "Insert into tb_cliente(nome_cliente, email_cliente, telefone_cliente) values (?,?,?)";

        try {
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getTelefone());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro inserir Cliente: " + erro);
        }
    }

    // MÉTODO LISTAR ClienteS
    public ArrayList<Cliente> listarClientes() {
        // variavel que recebe a instrucao SQL
        String sql = "SELECT * FROM tb_cliente";

        try {
            // CAMINHO DE CONEXÃO PARA O STATEMENT - st
            st = conn.createStatement();
            // passar para o result set o retorno d instrução sql
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setTelefone(rs.getString("telefone_cliente"));
                lista.add(cliente);

            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro ao executar a listagem cliente");

        }

        return lista;

    }

    // listar por nome
 public ArrayList<Cliente> listarClientesNome(String valor) {
        // variavel que recebe a instrucao SQL
        String sql = "SELECT * FROM tb_cliente WHERE nome_cliente LIKE '%"+ valor +"%'";

        try {
            //CAMINHO DE CONEXÃO PARA O STATEMENT - st
            st = conn.createStatement();
            //passar para o result set o retorno d instrução sql
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setTelefone(rs.getString("telefone_cliente"));
                lista.add(cliente);

            }

        } catch (SQLException erro) {
            throw new RuntimeException("Erro ao executar a listagem por nome do cliente");

        }

        return lista;

    }

    public void atualizarCliente(Cliente cliente) {

        try {
            String sql = "update tb_cliente set nome_cliente = ? , email_cliente = ? , telefone_cliente = ? where id_cliente = ?";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getTelefone());
            stmt.setInt(4, cliente.getId());

            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro atualizar Cliente: " + erro);
        }
    }

    public void remover(int id) {
        try {
            String sql = ("DELETE FROM tb_cliente WHERE id_cliente = ?");
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (Exception erro) {
            throw new RuntimeException("Erro ao deletar Cliente: " + erro);
        }

    }

}
