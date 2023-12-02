/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package produto.controle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import produto.modelo.ProdutoDAO;

/**
 *
 * @author aluno
 */
public class CadastroProdutoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String descricao = request.getParameter("descricao");
        double preco = Double.parseDouble(request.getParameter("preco"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));

        ProdutoDAO produtoDAO = new ProdutoDAO();
        boolean sucesso = produtoDAO.inserir(descricao, preco, quantidade);
        System.out.println(descricao);
        System.out.println(preco);
        System.out.println(quantidade);
        if (sucesso) {
            request.setAttribute("mensagem", "Produto cadastrado com sucesso");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/admin.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("mensagem", "Não foi possível cadastrar o produto");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/admin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
