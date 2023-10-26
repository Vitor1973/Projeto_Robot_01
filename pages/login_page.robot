Language: ptbr
*** Configurações ***
Biblioteca     SeleniumLibrary
Biblioteca     Process

Recurso    ../commom/constants.robot

*** Variáveis ***
${LOGIN.CPF.INPUT}        css=[data-testid="username"]
${LOGIN.SENHA.INPUT}      css=[data-testid="password"]
${LOGIN.ENTRAR.BUTTON}    css=[aria-describedby="entrar"]

*** Palavras-Chave ***
# Métodos adicionados à page devem se limitar a acessar diretamente os campos
Escrever no campo CPF ${CPF}
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}    ${CONST.RETRY_TIME}    
    ...    Element Should Be Visible    ${LOGIN.CPF.INPUT}
    Input Text    ${LOGIN.CPF.INPUT}    ${CPF}

Escrever no campo senha ${SENHA}
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}    ${CONST.RETRY_TIME}    
    ...    Element Should Be Visible    ${LOGIN.SENHA.INPUT}
    Input Password    ${LOGIN.SENHA.INPUT}    ${SENHA}

Clicar no botão entrar
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}    ${CONST.RETRY_TIME}    
    ...    Element Should Be Visible    ${LOGIN.ENTRAR.BUTTON}
    Click Element    ${LOGIN.ENTRAR.BUTTON}