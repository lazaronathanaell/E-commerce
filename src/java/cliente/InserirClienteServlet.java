package cliente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import usuario.modelo.UsuarioDAO;

/**
 *
 * @author Lazaro Natanael
 *
 * Classe que representa a ação de inserir um novo cliente
 */
public class InserirClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String user_name = request.getParameter("user-name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String tel = request.getParameter("tel");
        String cpf_cnpj = request.getParameter("cpf-cnpj");
        String dt_birth = request.getParameter("date-of-birth");
        String street = request.getParameter("street");
        String house_number = request.getParameter("house-number");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String cep = request.getParameter("cep");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean sucesso = usuarioDAO.inserirCliente(name, user_name, email, password, tel, cpf_cnpj, dt_birth, street, house_number, district, city, state, cep);
        System.out.println(sucesso);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (sucesso) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>smd e-commerce</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>" + ((sucesso) ? "Cliente cadastrado com sucesso!" : "Não foi possível cadastrar este cliente") + "</h1>");
                out.println("</body>");
                out.println("</html>");
            } else {
                response.sendRedirect("index.jsp");
            }
        }
    }

}
