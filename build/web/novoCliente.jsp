<%-- 
    Document   : novoCliente
    Created on : 15 de set de 2023, 14:52:02
    Author     : Lazaro Natanael da Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>smd e-commerce</title>
    </head>
    <body>
        <h1>Cadastrar um Novo Cliente</h1>
        <form action="InserirCliente" method="post">
            <section class="cadastro">
                <div class="nome">
                    <label class="form-nome" >Nome</label>
                    <input class="form-nome" id="nome" name = "nome" placeholder="Fulano">
                    <label class="form-nome" >Sobrenome</label>
                    <input class="form-nome" id="sobrenome" name = "sobrenome" placeholder="Beltrano de Tal">
                </div>
                <div class="login">
                    <label class="form-credencial">E-mail</label>
                    <input class="form-credencial" id="email" name = "nome" placeholder="E-mail">
                    <label class="form-credencial">Senha</label>
                    <input class="form-credencial" id="senha" type="password" name = "sobrenome" placeholder="Senha">
                </div>
                <div class="dadospessoais">
                    <label class="form-dadospessoais" >CPF</label>
                    <label class="form-dadospessoais" >Telefone</label>
                    <label class="form-dadospessoais" >Data de Nascimento</label>

                    <input class="form-dadospessoais" type="text" id="cpf" name="cpf" inputmode="numeric" maxlength="14" placeholder="000.000.000-00">
                    <input class="form-dadospessoais" type="text" id="tel" name="tel" inputmode="numeric" maxlength="14" placeholder="Telefone">
                    <input class="form-dadospessoais" type="date" id="dataNascimento" name="dataNascimento">
                </div>
                <div class="endereco">
                    <label class="form-endereco" >Rua</label>
                    <label class="form-numero" >Número</label>
                    <label  class="form-complemto" >Complemento</label>

                    <input class="form-endereco" id="logradouro" type="textS" placeholder="Langradouro">
                    <input class="form-numero" type="number" placeholder="N°">
                    <input class="form-complemto" type="text" placeholder="Complemento">

                    <label class="form-cep">CEP</label>
                    <label class="cidade-uf">Cidade</label>
                    <label class="cidade-uf">Estado</label>

                    <input type="text" class="form-cep" name="cep" placeholder="12345-678">
                    <input class="cidade-uf"  type="text" placeholder="Cidade">
                    <input class="cidade-uf" type="text" placeholder="Estado">
                </div>
            </section>
        </form>
        <a href="index.jsp">Voltar</a>
        <script src="script.js"></script>
    </body>
</html>
