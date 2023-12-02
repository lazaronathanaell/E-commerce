/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cliente.controle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import usuario.modelo.UsuarioDAO;

/**
 *
 * @author Lazaro Natanael
 */
public class ExcluirCadastroServlet extends HttpServlet {
@Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean sucesso = usuarioDAO.excluir(id);
        if (sucesso) {
            request.setAttribute("mensagem", "cadastro de usuario excluído com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível excluir o cadastro de usuario");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/inicio");
        dispatcher.forward(request, response);
    }
}
