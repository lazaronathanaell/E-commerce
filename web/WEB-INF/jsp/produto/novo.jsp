<%-- 
    Document   : novo
    Created on : 27 de out de 2023, 16:25:25
    Author     : leoomoreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nova produto</h1>
         <form action="CadastroProduto" method="post">
            Descricao: <input type="text" name="descricao" />
            <br/>
            Preço: <input type="text" name="preco" />
            <br/>
            Quantidade: <input type="text" name="quantidade" />
            <br/>
            Cadastrar: <input type="submit" name="Cadastrar" />
        </form>
    </body>
</html>
