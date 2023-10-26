Language: ptbr
*** Configurações ***
Biblioteca     SeleniumLibrary
Biblioteca     Process

Recurso    ../pages/login_page.robot


*** Palavras-Chave ***
# Este é o local onde deve-se incluir métodos complexos, que acessam ou aplicam lógica entre vários elementos
Que eu faça login com o usuário e senha
    [Argumentos]    ${CPF}    ${SENHA}
    Escrever no campo CPF ${CPF}
    Escrever no campo senha ${SENHA}
    Clicar no botão entrar


