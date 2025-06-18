*** Settings ***
Resource    ../main.robot

*** Variables ***
    
*** Keywords ***
Dado que eu acesse o VisuaLStore
    Open Browser    url=http://172.16.115.198:8091/vm_visualstore_adm/    browser=Chrome
E Preencha o usuario e senha
    Input Text    id:usuarios    visualmix
    Input Text    id:senha       4913
E clique no botao login
    Click Element    btnEnviar
Então entrar na tela principal
    Element Should Be Visible    class:menu
Dado que clique em cadastro de loja
    Click Element    id:e0_5i
    Click Element    id:e0_18o
    Click Element    id:e0_19o


