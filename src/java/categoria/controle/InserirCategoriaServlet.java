package categoria.controle;

import categoria.modelo.CategoriaDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe que representa a ação de inserir uma nova categoria
 */
public class InserirCategoriaServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        CategoriaDAO categoriaDAO = new CategoriaDAO();
        boolean sucesso = categoriaDAO.inserir(nome);
        if (sucesso) {
            request.setAttribute("mensagem", "Categoria inserida com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível inserir a categoria");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("ListarCategoria");
        dispatcher.forward(request, response);
    }

}
