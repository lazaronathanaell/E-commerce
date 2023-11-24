
<%@include file="cabecalho.jsp" %>
        <h2 class="title-credenciar">Login de Usuário</h2>
        <form action="${pageContext.request.contextPath}/Login" method="post">
            <div class="login-password">
                <div class="input-group login">
                    <input type="text" id="email" name="login" class="input-group_input" required>
                    <label for="email" class="input-group_label">Informe o E-mail</label>
                </div>
                <div class="input-group password">
                    <input type="text" id="password" name="senha" class="input-group_input" required>
                    <label for="password" class="input-group_label">Senha</label>
                </div>
            </div>
        <button type="submit">Sign in</button>
        </form>
   
<%@include file="rodape.jsp" %>
