*** Settings ***
Resource        ../resources/main.robot
Resource    ../resources/pages/Login.robot
Test Setup           Dado que acesse o VisuaLStore
Test Teardown        Fechar o navegador
*** Test Cases ***
Realizar login no VisuaLStore
    E Preencha o usuario e senha
    E clique no botao login    
    Então entrar na tela principal
    Sleep    10s