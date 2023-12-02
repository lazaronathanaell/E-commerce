<%-- 
    Document   : admin
    Created on : 27 de out de 2023, 15:15:33
    Author     : leoomoreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>smdecommerce</title>
    </head>
    <body>
        <%
            if (request.getAttribute("mensagem") != null) {
        %>
        <%= request.getAttribute("mensagem") %>
        <%
            }
        %>
        <h1>Área Administrativa</h1>
        <a href="UploadProdutoFotoForm">Upload de Foto de Produto</a> 
        <br/> 
        <a href="${pageContext.request.contextPath}/admin/ListarCategoria">Cadastro de Categorias</a>
        <br/>
        <a href="${pageContext.request.contextPath}/admin/ListarProduto">Cadastro de Produto</a>
        <br/>
        <a href="${pageContext.request.contextPath}/Logout">Sair</a>
    </body>
</html>
