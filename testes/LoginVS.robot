*** Settings ***
Resource        ../resources/main.robot
Resource    ../resources/pages/Login.robot
Test Setup           Dado que acesse o VisuaLStore
Test Teardown        Fechar o navegador
*** Test Cases ***
Realizar login no VisuaLStore
    Preencha o usuario e senha
    Clique no botao login    
    Entrar na tela principal
    Sleep    10s

