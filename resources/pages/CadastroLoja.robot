*** Settings ***
Resource    ../main.robot
Resource    ../shared/Variables.robot

*** Keywords ***
Verificar se a loja existe
    Select Frame    xpath=//iframe[@id='desktop']
    Input Text    name:txtValor        ${CodLoja}
    Click Element    name:cmdVer
    Sleep    2s    
    ${rc}    ${msg}=    Run Keyword And Ignore Error    Element Should Be Visible    xpath=//a[contains(@class, 'ListaLinha1') and contains(text(),'${CodLoja}')]
    Run Keyword If    '${rc}' == 'PASS'    Excluir loja para cadastro

Excluir loja para cadastro
    Click Element    xpath=//a[contains(@class, 'ListaLinha1') and contains(text(), '${RSocial}')]
    Sleep    2s
    Click Element    name:btnExcluir
    Handle Alert    action=ACCEPT

Acessar o cadastro de loja
    Set Selenium Speed    0.2s
    Click Element    id:e0_5i
    Click Element    id:e0_18o
    Click Element    id:e0_19o
Clicar no botao Incluir
    Click Element    xpath=//a[contains(text(), 'Incluir')]

Inserir os dados da loja
    Set Selenium Speed    0.5s
    Input Text    name:txtCodigo                      ${CodLoja}
    Input Text    name:txtTelefone                    ${NumPhone}
    Input Text    name:txtRazaoSoc                    ${RSocial}
    Input Text    name:txtDescricao                   ${DescLoja}
    Input Text    name:txtEndereco                    ${Endereco}
    Input Text    name:txtNumero                      ${NumEndereco}
    Input Text    name:txtComplemento                 ${Complemento}
    Input Text    name:txtBairro                      ${Bairro}
    Input Text    name:txtCep                         ${CEP}
    Select From List By Label    name:cmbUF           ${Estado} 
    Input Text    name:psqCodMunic                    ${CodMunicipio}
    Input Text    name:txtCidade                      ${Cidade}
    Input Text    name:txtCGC                         ${CNPJ}
    Input Text    name:txtCnae                        ${CNAE}
    Select From List By Label    name:cmbCrt          ${CRT}
    Input Text    name:txtCae                         ${CAE}
    Input Text    name:txtArea                        ${Area}
    Input Text    name:txtInscEstadual                ${InsEstadual}
    Input Text    name:txtPis                         ${PIS}
    Input Text    name:txtConfins                     ${Confins}
    Input Text    name:txtInscMunicipal               ${InsMunicipal}
    Select From List By Label    name:cmbTpLoja       ${TipoLoja}
    Select From List By Label    name:cmbBalanca      ${BalancaA}
    Select From List By Label    name:cmbBalanca2     ${BalancaB}
    Input Text    name:txtFunc                        ${NumFuncionario}
    Input Text    name:txtGerente                     ${Gerente}
    Click Element    name:chkAtivo
    Click Element    name:usaNFCE
Clicar em salvar
    Click Element    name:btnSalvar
    Handle Alert    action=ACCEPT

    

    


