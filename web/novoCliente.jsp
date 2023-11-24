<%-- 
    Document   : novoCliente
    Created on : 15 de set de 2023, 14:52:02
    Author     : Leonardo Oliveira Moreira
--%>

<%@include file="cabecalho.jsp" %>
        <h1>Cadastrar um Novo Cliente</h1>
        <form action="InserirCliente" method="post">
            <div class="input-group">
                
                <input type="text" name="nome" class="input-group_input"  required>
                <label for="inputNome" class="input-group_label">Nome completo</label>
                
            </div>
            <div class="input-group">
               
                <input type="text" name="endereco" class="input-group_input"  required>
                <label for="inputEndereco" class="input-group_label">Endereço</label>
                
            </div>
            <div class="input-group">
                
                <input class="input-group_input"  required>
                <label class="input-group_label">E-mail</label>
                
            </div>

            
            <div class="input-group">
                <input type="text" name="login" class="input-group_input" required>
                <label for="inputLogin" class="input-group_label">Login</label>
            </div>

            <div class="input-group">
                <input type="password" name="senha" class="input-group_input" required>
                <label for="inputSenha" class="input-group_label">Senha</label>
                
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
        <br/>
        <a href="Inicio" class="btn btn-primary">Voltar</a>
<%@include file="rodape.jsp" %>
