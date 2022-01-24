package DAO;
// importar 2 bibiotecas de conexao
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class Conexao {
       //Criando medoto de conexao
    public Connection getConexão() throws ClassNotFoundException {

        // Try verifica se tem algum erro no código que está dentro do módulo
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            return DriverManager.getConnection("jdbc:mysql://localhost/BDAvaliacao?useSSL=false&useTimezone=true&serverTimezone=UTC","root","261192");

        } catch (SQLException erro) {
            throw new RuntimeException("Erro classe conexão" + erro);
        }
    } 

}
