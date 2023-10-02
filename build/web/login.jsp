<%-- 
    Document   : index
    Created on : 24 de set de 2023, 14:52:02
    Author     : Lazaro Natanael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>smd e-commerce</title>
    </head>
    <body>
        <h1>Identificação do Usuário</h1>
        <section class="form-group">
            <form class="login" action="Login" method="post">
                <input class="form-credencial" type="text" name="login" placeholder="Entre com seu login" />
                <input class="form-credencial" type="password" name="senha" placeholder="Entre com sua senha" />
                <input class="enter" type="submit" value="Entrar" />
            </form>
        </section>
        <hr>
        <a href="novoCliente.jsp">Cadastre-se</a>
        <script src="script.js"></script>
    </body>
</html>
