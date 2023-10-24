<%-- 
    Document   : credenciar
    Created on : 11 de out. de 2023, 11:44:55
    Author     : Lazaro Natanael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela Interativa</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="body-accredit">
        <div id="left-section" class="left-section">
            <!-- Botão para alternar os formulários -->
            <button id="button" type="button" onclick="alternarFormulario()">Ir para cadastro</button>
        </div>
        <div id="right-section" class="right-section">
            <!-- Formulário de Login -->
            <div id="login" class="login">
                <form action="Login" method="post" id="login-form">
                    <header class="header-credencial">
                        <h1>Junte se a nossa família</h1>
                        <h2>Login de Usuário</h2>
                    </header>
                    <div class="login-password">
                        <div class="input-group login">
                            <input type="text" id="email" class="input-group_input" required>
                            <label for="email" class="input-group_label">Informe o E-mail</label>
                        </div>
                        <div class="input-group password">
                            <input type="text" id="password" class="input-group_input" required>
                            <label for="password" class="input-group_label">Senha</label>
                        </div>
                    </div>
                    <button type="button">Sign in</button>
                </form>
            </div>
            <!-- Formulário de Cadastro (inicialmente oculto) -->
            <div id="register" class="register">
                <header class="header-credencial">
                    <h1>Junte se a nossa família</h1>
                    <h2>Cadastro de Usuário</h2>
                </header>
                <form class="register-form" id="register-form" action="InserirCliente" method="post">
                    <div class="first-name-user-name">
                        <div class="input-group first-name">
                            <input type="text" name="name" id="name" class="input-group_input" required>
                            <label for="name" class="input-group_label">Nome</label>
                        </div>
                        <div class="input-group user-name">
                            <input type="text" name="user-name" id="user-name" class="input-group_input" required>
                            <label for="user-name" class="input-group_label">Nome de Usuário</label>
                        </div>
                    </div>
                    <div class="login-password">
                        <div class="input-group login">
                            <input type="text" name="email" id="email" class="input-group_input" required>
                            <label for="email" class="input-group_label">Informe o E-mail</label>
                        </div>
                        <div class="input-group password">
                            <input type="password" name="password" id="password" class="input-group_input" required>
                            <label for="password" class="input-group_label">Senha</label>
                        </div>
                        <div class="input-group password">
                            <input type="text" id="confirm-password" class="input-group_input" required>
                            <label for="password" class="input-group_label">Conforme a Senha</label>
                        </div>
                    </div>
                    <div class="tel-cpf-date-of-birth">
                        <div class="tel-cpf">
                            <div class="input-group tel">
                                <input type="password" name="tel" id="tel" class="input-group_input" required>
                                <label for="tel" class="input-group_label">Telefone</label>
                            </div>
                            <div class="input-group cpf">
                                <input type="text" name="cpf-cnpj" id="cpf-cnpj" class="input-group_input"  name="cpf-cnpj" inputmode="numeric" maxlength="18" required>  
                                <label for="cpf-cnpj" class="input-group_label">CPF/CNPJ</label>
                            </div>
                        </div>
                        <div class="input-group date-of-birth">
                            <input type="date" id="date-of-birth" class="input-date-of-birth" name="date-of-birth">
                            <label class="input-label_date-of-birth">Data de Nascimento:</label>
                        </div>
                    </div>
                    <div class="street-number-city-district">
                        <div class="input-group street">
                            <input type="text" name="street" id="street" class="input-group_input" required>
                            <label for="street" class="input-group_label">Langradouro</label>
                        </div>
                        <div class="input-group number-house">
                            <input type="text" name="house-number" id="house-number" class="input-group_input" required>
                            <label for="house-number" class="input-group_label">N°</label>
                        </div>
                        <div class="input-group district">
                            <input type="text" name="district" id="district" class="input-group_input" required>
                            <label for="district" class="input-group_label">Bairro</label>
                        </div>
                    </div>
                    <div class="city-stace-cep">
                        <div class="input-group city">
                            <input type="text" name="city" id="city" class="input-group_input" required>
                            <label for="city" class="input-group_label">Cidade</label>
                        </div>
                        <div class="input-group state">
                            <input type="text" name="state" id="state" class="input-group_input" required>
                            <label for="state" class="input-group_label">Estado</label>
                        </div>
                        <div class="input-group cep">
                            <input type="text" id="cep" class="input-group_input" name="cep" inputmode="numeric" maxlength="10" required>
                            <label for="cep" class="input-group_label">CEP</label>
                        </div>
                    </div>
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>

</html>