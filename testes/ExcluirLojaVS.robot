*** Settings ***
Resource        ../resources/main.robot
Resource        ../resources/pages/Login.robot
Resource        ../resources/pages/CadastroLoja.robot
Test Setup           Dado que acesse o VisuaLStore
Test Teardown        Fechar o navegador

*** Test Cases ***
