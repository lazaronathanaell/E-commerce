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
public class AtualizarDadosServlet extends HttpServlet {

     
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean sucesso = usuarioDAO.atualizarDadosUsuario(nome, endereco, email, id);
        if (sucesso) {
            request.setAttribute("mensagem", "Dados do usuario com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível atualizar aos dados do usuario");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("perfil.jsp");
        dispatcher.forward(request, response);
    }
}
