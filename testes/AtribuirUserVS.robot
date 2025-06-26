*** Settings ***
Resource        ../resources/main.robot
Resource        ../resources/pages/Login.robot
Resource        ../resources/pages/CadastroLoja.robot
Resource        ../resources/pages/AtribuirUser.robot
Test Setup           Acesse o VisuaLStore
Test Teardown        Fechar o navegador

*** Test Cases ***

Adicionar user a loja    
    Preencha o usuario e senha
    Clique no botao login
    Entrar na tela principal
    Acessar o painel de usuario
    

