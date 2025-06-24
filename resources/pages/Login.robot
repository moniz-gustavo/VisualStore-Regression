*** Settings ***
Resource    ../main.robot

*** Variables ***
    
*** Keywords ***
Acesse o VisuaLStore
    Open Browser    url=http://172.16.115.198:8091/vm_visualstore_adm/    browser=Chrome
Preencha o usuario e senha
    Input Text    id:usuarios    gustavo
    Input Text    id:senha       4166
Clique no botao login
    Click Element    btnEnviar
Entrar na tela principal
    Sleep    2s
    Element Should Be Visible    class:menu



