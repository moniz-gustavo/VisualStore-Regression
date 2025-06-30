*** Settings ***
Resource        ../resources/main.robot
Resource        ../resources/pages/Login.robot
Resource        ../resources/pages/CadastroLoja.robot
Test Setup           Acessar o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
Cadastrar uma nova loja
    Preencha o usuario e senha
    Clique no botao login  
    Entrar na tela principal
    Acessar o cadastro de loja
    Sleep    2s
    Verificar se a loja existe
    Sleep    2s
    Clicar no botao Incluir
    Sleep    2s
    Inserir os dados da loja
    Clicar em salvar
