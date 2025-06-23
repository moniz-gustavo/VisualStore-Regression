*** Settings ***
Resource    ../main.robot

*** Variables ***
${CodLoja}        2
${NumPhone}       11988698869
${RSocial}        G MIRA LTDA
${DescLoja}       G MIRA LTDA - LJ 02
${Endereco}       AV SAO MIGUEL DOS CARIBES
${NumEndereco}    4505
${Complemento}    Comercial
${Bairro}         NEOPOLIS
${CEP}            59088500
${Estado}         RN
${CodMunicipio}    2408102
${Cidade}         Natal
${CNPJ}           07.973.007/0002-10
${CNAE}           4711302
${CRT}            3 - Regime Normal
${CAE}            443344
${Area}           680,00
${InsEstadual}    20.209.073-6
${PIS}            0,000
${Confins}        0,000
${InsMunicipal}    215.400-2
${TipoLoja}        Varejo
${BalancaA}        00-Nenhuma
${BalancaB}        00-Nenhuma
${NumFuncionario}        100
${Gerente}        VisualMix

*** Keywords ***
E acessar o cadastro de loja
    Click Element    id:e0_5i
    Click Element    id:e0_18o
    Click Element    id:e0_19o
E clicar no botao Incluir
    Select Frame    xpath=//iframe[@id='desktop']
    Click Element    xpath=//a[contains(text(), 'Incluir')]

E inserir os dados da loja
    Set Selenium Speed    0.2s
    Input Text    name:txtCodigo      ${CodLoja}
    Input Text    name:txtTelefone    ${NumPhone}
    Input Text    name:txtRazaoSoc    ${RSocial}
    Input Text    name:txtDescricao   ${DescLoja}
    Input Text    name:txtEndereco    ${Endereco}
    Input Text    name:txtNumero      ${NumEndereco}
    Input Text    name:txtComplemento    ${Complemento}
    Input Text    name:txtBairro      ${Bairro}
    Input Text    name:txtCep         ${CEP}
    Select From List By Label    name:cmbUF      ${Estado} 
    Input Text    name:psqCodMunic        ${CodMunicipio}
    Input Text    name:txtCidade        ${Cidade}
    Input Text    name:txtCGC        ${CNPJ}
    Input Text    name:txtCnae        ${CNAE}
    Select From List By Label    name:cmbCrt    ${CRT}
    Input Text    name:txtCae    ${CAE}
    Input Text    name:txtArea    ${Area}
    Input Text    name:txtInscEstadual    ${InsEstadual}
    Input Text    name:txtPis    ${PIS}
    Input Text    name:txtConfins    ${Confins}
    Input Text    name:txtInscMunicipal    ${InsMunicipal}
    Select From List By Label    name:cmbTpLoja    ${TipoLoja}
    Select From List By Label    name:cmbBalanca    ${BalancaA}
    Select From List By Label    name:cmbBalanca2    ${BalancaB}
    Input Text    name:txtFunc    ${NumFuncionario}
    Input Text    name:txtGerente    ${Gerente}
    Click Element    name:chkAtivo
    Click Element    name:usaNFCE
Entao clicar em salvar
    Click Element    btnSalvar
    Handle Alert    action=ACCEPT

    


