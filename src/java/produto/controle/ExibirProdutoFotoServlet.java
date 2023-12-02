/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package produto.controle;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author leoomoreira
 */
public class ExibirProdutoFotoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        File arquivoFoto = new File("/home/leoomoreira/Upload/" + id + ".png");
        if (arquivoFoto.exists()) {
            ServletContext context = this.getServletContext();
            String mimeType = context.getMimeType(arquivoFoto.getAbsolutePath());
            if (mimeType == null) {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                return;
            }
            response.setContentLengthLong(arquivoFoto.length());
            response.setContentType(mimeType);
            FileInputStream in = new FileInputStream(arquivoFoto);
            OutputStream out = response.getOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
            while ((bytesRead = in.read(buffer)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
            in.close();
            out.close();
        } else {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
    }
}
