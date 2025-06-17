*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Realizar login no VisuaLStore
    Dado que eu acesse o VisuaLStore
    E Preencha o usuario e senha
    E clique no botao login
    Então entrar na tela principal

Realizar o cadastro de uma loja
    Dado que clique em cadastro de loja
    E acesse pagina de lojas


    



*** Keywords ***
Dado que eu acesse o VisuaLStore
    Open Browser    url=http://172.16.115.198:8091/vm_visualstore_adm/    browser=Chrome
E Preencha o usuario e senha
    Input Text    id:usuarios    gustavo
    Input Text    id:senha       4166
E clique no botao login
    Click Element    btnEnviar
Então entrar na tela principal
    Element Should Be Visible    class:menu
Dado que clique em cadastro de loja
    Click Element    id:e0_5i
    Click Element    id:e0_18o
    Click Element    id:e0_19o
E acesse pagina de lojas
    Wait Until Element Is Visible    xpath=//iframe[@id='desktop']
    Select Frame     xpath=//iframe[@id='desktop']
    Click Element    xpath=//a[contains(text(), 'Incluir')]
    Element Should Be Visible    name:txtCodigo
    Sleep    10s
    Input Text    name:txtCodigo    1
    Sleep    10s


    