*** Settings ***
Resource    ../main.robot

*** Variables ***
${selecionarFiltro}    Nome
      

*** Keywords ***
Acessar o painel de usuario
    Set Selenium Speed    0.3s
    Click Element    id:e0_0i
    Click Element    id:e0_2o
    Select Frame     xpath=//iframe[@id='desktop']
    Select From List By Label    name:cmbCampos    ${selecionarFiltro}
    Input Text    name:txtValor    ${NomeUser}
    Click Element    ${BotaoVer}
    Sleep    10s



