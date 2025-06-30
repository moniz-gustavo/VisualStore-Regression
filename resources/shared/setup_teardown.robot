*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar o navegador
    Open Browser     url=http://172.16.115.198:8091/vm_visualstore_adm/    browser=Chrome

Fechar o navegador
    Close Browser    