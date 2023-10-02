<%-- 
    Document   : index
    Created on : 24 de set de 2023, 14:52:02
    Author     : Lazaro Natanael
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>

<body>
    <header>
        <label for="marca">Marca</label>
        <div class="sub-reader">
            <a class="link-header" href="novoCliente.jsp">Junte-se a nós</a>
            <a class="link-header"href="login.jsp">Entrar</a>
        </div>
    </header>
    <div class="new-products">
        <div class="category-name">
            <h1>lançamento Chuyn</h1>
            <div class="img-publi"></div>
        </div>
        <div class="products">
            <div class="product-l"></div>
            <div class="product"></div>
            <div class="product-r"></div>
        </div>
    </div>
    <div class="new-products">
        <div class="category-name">
            <h1>Descontos imperdiveis</h1>
        </div>
        <div class="products">
            <div class="product-l"></div>
            <div class="product"></div>
            <div class="product"></div>
            <div class="product-r"></div>
        </div>
        <div class="description-price">
            <div class="product-l"></div>
            <div class="product"></div>
            <div class="product"></div>
            <div class="product-r"></div>
        </div>
    </div>
    <div class="new-products">
        <div class="category-name">
            <h1>Descontos imperdiveis</h1>
            
        </div>
        <div class="img-sport-r"></div>
        <div class="products-sport-l">
            <div class="product-l sport" id="product-1"></div>
            <div class="product-r sport" id="product-2"></div>
            <div class="product-l sport" id="product-3"></div>
            <div class="product-r sport" id="product-4"></div>
        </div>
    </div>
    <div class="new-products">
        <div class="category-name">
            <h1>Descontos imperdiveis</h1>
            
        </div>
        
        <div class="products-sport-r">
            <div class="product-l sport" id="product-1"></div>
            <div class="product-r sport" id="product-2"></div>
            <div class="product-l sport" id="product-3"></div>
            <div class="product-r sport" id="product-4"></div>
        </div>
        <div class="img-sport-l"></div>
    </div>
    <script src="script.js"></script>
</body>
</html>