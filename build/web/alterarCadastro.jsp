
<%@include file="cabecalho.jsp" %>
        <h2 class="title-credenciar">Alterar Dados Pessoais</h2>
        <form action="${pageContext.request.contextPath}/AtualizarDados" method="post">
            <input type="hidden" name="id" value="<%=usuario.getId()%>">
            <div class="login-password">
                <div class="input-group">
                
                <input type="text" name="nome" class="input-group_input"  required>
                <label for="inputNome" class="input-group_label">Nome completo</label>
                
            </div>
            <div class="input-group">
               
                <input type="text" name="endereco" class="input-group_input"  required>
                <label for="inputEndereco" class="input-group_label">Endereço</label>
                
            </div>
             <div class="input-group">
               
                <input type="text" name="email" class="input-group_input"  required>
                <label for="inputEmail" class="input-group_label">E-mail</label>
                
            </div>
            </div>
            <button type="submit">Sign in</button>
        </form>
   
<%@include file="rodape.jsp" %>