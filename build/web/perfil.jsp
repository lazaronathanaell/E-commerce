 <%-- 
    Document   : perfil
    Created on : 30 de nov. de 2023, 09:27:25
    Author     : lazar
--%>


<%@include file="cabecalho.jsp" %>
<div>
    <div>
        <a>
            Compras efetivadas
        </a>
        <a class="link-credenciar" href="${pageContext.request.contextPath}/AtualizarCadastro">Dados pessoais</a>
        <a href="${pageContext.request.contextPath}/Carrinho" >
            Carrinho de compras
        </a>
    </div>
    <div>
        <input class="form-control me-2" type="text" readonly disabled value="Nome: <%=usuario.getNome()%>">
        <input class="form-control me-2" type="text" readonly disabled value="Endereço: <%=usuario.getEndereco()%>">
        <input class="form-control me-2" type="text" readonly disabled value="E-mail:<%=usuario.getEmail()%>">
        <a class="btn btn-outline-danger"  href="ExcluirCadastro?id=<%=usuario.getId() %>">Excluir</a>
    </div>
</div>
   
<%@include file="rodape.jsp" %>
