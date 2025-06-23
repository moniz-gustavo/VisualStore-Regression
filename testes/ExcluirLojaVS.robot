*** Settings ***
Resource        ../resources/main.robot
Resource        ../resources/pages/Login.robot
Resource        ../resources/pages/CadastroLoja.robot
Test Setup           Dado que acesse o VisuaLStore
Test Teardown        Fechar o navegador

*** Test Cases ***
Cadastrar uma nova loja
    E Preencha o usuario e senha
    E clique no botao login
    Sleep    2s    
    Então entrar na tela principal
    E acessar o cadastro de loja
    Sleep    2s
    E clicar no botao Incluir
    E inserir os dados da loja
    Sleep    2s
    Entao clicar em salvar
    Sleep    5s