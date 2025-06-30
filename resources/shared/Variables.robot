*** Variables ***
${CodLoja}        555
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
${BotaoVer}       name:cmdVer


${selecionarFiltro}    Nome

${NomeUser}    gustavo
${SenhaUser}    4166


${clicarSalvar}    Execute JavaScript    document.getElementsByName('btnSalvar')[0].click()
${aceitePopUp}     Handle Alert    action=ACCEPT