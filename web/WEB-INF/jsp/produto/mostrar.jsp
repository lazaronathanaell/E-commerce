<%-- 
    Document   : novo
    Created on : 27 de out de 2023, 16:25:25
    Author     : leoomoreira
--%>

<%@page import="produto.modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Atualizar categoria</h1>
        <% Produto p = (Produto) request.getAttribute("produto"); %>
        <form action="AtualizarProduto" method="post">
            Descricao: <input type="text" name="<%=p.getDescricao()%>" />
            <br/>
            Preço: <input type="text" value="<%=p.getPreco()%>" />
            <br/>
            Quantidade: <input type="text" value="<%=p.getQuantidade()%>" />
            <br/>
            <input type="submit" value="Salvar" />
        </form>
    </body>
</html>
