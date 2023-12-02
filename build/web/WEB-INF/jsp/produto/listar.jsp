<%-- 
    Document   : listar
    Created on : 30 de nov. de 2023, 23:54:27
    Author     : Lazaro Natanael
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="produto.modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Produtos</h1>
        <form action="BuscarProduto" method="post">
            ID: <input type="text" name="id" />
            <br/>
            <input type="submit" value="Buscar" />
        </form>
<%
            if (request.getAttribute("mensagem") != null) {
        %>
        <div><%= request.getAttribute("mensagem")%></div>
        <%
            }
        %>
        <% 
            List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
            if (produtos == null || produtos.isEmpty()) {
        %>
            <div>Não há produtos a serem listados.</div>
        <%
            } else {
        %>
        <div class="row row-cols-1 row-cols-md-3 g-4">
        
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Produto</th>
                        <th scope="col">Quantidade</th>
                        <th scope="col">Preço R$</th>      
                    </tr>
                </thead>
                <tbody>
<%
        for (Produto p : produtos) {
            DecimalFormat realFormat = new DecimalFormat("#,##0.00");
%>
                    <tr>
                        <th scope="row"><%= p.getId() %>: </th>
                        <td><%= p.getDescricao() %></td>
                        <td><%= p.getQuantidade() %></td>
                        <td><%= realFormat.format(p.getPreco()) %></td>
                        <td>
                            <a href="MostrarProduto?id=<%= p.getId() %>">Mostrar</a>
                            <a href="ExcluirProduto?id=<%= p.getId() %>">Excluir</a>
                        </td>
                    </tr>
<%    
        }  
%>
                </tbody>
            </table>
        </div>
<%    
    }
%>
<a href="NovoProduto">Novo produto</a>
<h2>Relatorio de produtos</h2>
<a href="RelatorioProdutosFaltando">Faltando</a>
    </body>
</html>
