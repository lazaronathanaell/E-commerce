package usuario.modelo;

import static config.Config.*;
import java.sql.*;

/**
 *
 * @author Lazaro Natanael
 *
 * Classe que implementa o padrão DAO para a entidade usuário
 */
public class UsuarioDAO {

    /**
     * Método utilizado para verificar se o login e senha do usuário são válidos
     *
     * @param login
     * @param senha
     * @return
     */
    public boolean validarAcesso(String login, String senha) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT * FROM usuario WHERE login = ? AND senha = ?");
            ps.setString(1, login);
            ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sucesso = true;
            }
            rs.close();
            ps.close();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
            return false;
        }
        return sucesso;
    }

    /**
     * Método utilizado para inserir um novo usuário cliente
     *
     * @param name
     * @param user_name
     * @param email
     * @param password
     * @param tel
     * @param cpf_cnpj
     * @param dt_birth
     * @param street
     * @param house_number
     * @param district
     * @param city
     * @param state
     * @param cep
     * @return
     */
    public boolean inserirCliente(String name, String user_name, String email, String password, String tel, String cpf_cnpj, String dt_birth, String street, String house_number, String district, String city, String state, String cep) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("INSERT INTO usuario (id,name, user_name, email, password, tel, cpf_cnpj, dt_birth, street, house_number, district, city, state, cep, administrador) VALUES (1,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, false)");
            ps.setString(1,name); 
            ps.setString(2,user_name);
            ps.setString(3,email); 
            ps.setString(4,password); 
            ps.setString(5,tel); 
            ps.setString(6,cpf_cnpj); 
            ps.setString(7,dt_birth); 
            ps.setString(8,street);
            ps.setString(9,house_number);
            ps.setString(10,district);
            ps.setString(11,city);
            ps.setString(12,state); 
            ps.setString(13,cep);
            sucesso = (ps.executeUpdate() == 1);
            ps.close();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
            return false;
        }
        return sucesso;
    }

}
