<%-- 
    Document   : cabecalho
    Created on : 6 de out de 2023, 16:35:15
    Author     : Leonardo Oliveira Moreira
--%>

<%@page import="usuario.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>smdecommerce</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath}/css/principal.css" rel="stylesheet" />
    </head>
    
    <body>
        <header>
        <a class="campo-logo" href="Inicio"><img class="logo" src="${pageContext.request.contextPath}/imagens/logo.png" alt="alt"/>smdecommerce</a>
        
        
        <div class="sub-reader">
        
            <%
            Usuario usuario = (Usuario) session.getAttribute("usuario");
            if (usuario != null && usuario instanceof Usuario) {
            %>
                <form class="d-flex" action="${pageContext.request.contextPath}/Logout" method="get">
                <input class="form-control me-2" type="text" readonly disabled value="Olá, <%= usuario.getNome() %>!">
                <a href="">
                    <span class="material-symbols-outlined">shopping_cart</span></a>
                <button class="btn btn-outline-danger" type="submit">Sair</button>
                </form>
            <% 
            } else {
            %>
                
                <a class="link-credenciar" href="${pageContext.request.contextPath}/Logar">Entrar</a>
                
                <a class="link-credenciar" href="${pageContext.request.contextPath}/Cadastrar">
                    Junte-se conosco</a>
                    <a href="${pageContext.request.contextPath}/CarrinhoDeCompras">
                        <span class="material-symbols-outlined">shopping_cart</span>
                    </a>
                
            
            <% 
            }
            %>

            </div>
               
            <%
            if (request.getAttribute("mensagem") != null) {
            %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <%= request.getAttribute("mensagem") %>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
            }
            %>
            </header>
            