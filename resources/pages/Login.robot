*** Settings ***
Resource    ../main.robot
Resource    ../shared/Variables.robot
*** Keywords ***
Acesse o VisuaLStore
    Open Browser    url=http://172.16.115.198:8091/vm_visualstore_adm/    browser=Chrome
Preencha o usuario e senha
    Input Text    id:usuarios    ${NomeUser}
    Input Text    id:senha       ${SenhaUser}
Clique no botao login
    Click Element    btnEnviar
Entrar na tela principal
    Sleep    2s
    Element Should Be Visible    class:menu



