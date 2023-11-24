<%-- 
    Document   : index
    Created on : 1 de set de 2023, 14:52:02
    Author     : Leonardo Oliveira Moreira
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="carrinhocompras.modelo.CarrinhoCompras"%>
<%@page import="carrinhocompras.modelo.CarrinhoCompraItem"%>
<%@page import="produto.modelo.Produto"%>
<%@page import="java.util.List"%>

<%@include file="cabecalho.jsp" %>

<%    List<Produto> produtos = (List<Produto>) request.getAttribute("produtosEmEstoque");
    if (produtos != null && !produtos.isEmpty()) {
%>
<div class="row row-cols-1 row-cols-md-3 g-4">
    <%
        for (int i = 0; i < produtos.size(); i++) {
            Produto p = produtos.get(i);
    %>
    <div class="products">
        <div class="product">
            <img src="" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title"><%= p.getDescricao()%></h5>
                <p class="card-text"><%= p.getDescricao()%></p>
            </div>
            <div class="card-button">
                <a href="AdicionarProdutoCarrinho?produtoId=<%= p.getId()%>" class="btn btn-primary">Comprar</a>
            </div>
        </div>
    </div>
    <%
        }
}
    %>
</div>
<%@include file="rodape.jsp" %>

