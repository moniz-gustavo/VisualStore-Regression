*** Settings ***
Resource    ../main.robot     
Resource    ../shared/Variables.robot

*** Keywords ***
Atribuir usuario a loja
    Set Selenium Speed    0.4s
    Click Element    id:e0_0i
    Click Element    id:e0_2o
    Select Frame     xpath=//iframe[@id='desktop']
    Select From List By Label    name:cmbCampos    ${selecionarFiltro}
    Input Text    name:txtValor    ${NomeUser}
    Click Element    ${BotaoVer}
    Click Element    xpath=//a[contains(@class, 'ListaLinha1') and contains(text(),'${NomeUser}')]
    Sleep    2s
    Click Element    xpath=//a[contains(@class, 'TabControlMenu') and contains(text(),'Loja')]
    Click Element    name:dtgLojas_header
    Execute JavaScript               document.getElementsByName('btnSalvar')[0].click()
    Handle Alert    action=ACCEPT
    Sleep    5s




    

