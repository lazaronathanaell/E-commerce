/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package produto.controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import produto.modelo.Produto;
import produto.modelo.ProdutoDAO;

/**
 *
 * @author Lazaro Natanael 
 */
public class ListarProdutoServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        ProdutoDAO produtoDAO = new ProdutoDAO();
        List<Produto> produtos = produtoDAO.listarProdutosEmEstoque();
        request.setAttribute("produtos", produtos);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/produto/listar.jsp");
        dispatcher.forward(request, response);
    }
}
