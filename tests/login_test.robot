Language: ptbr
*** Configurações ***
Documentação       Suite base de teste

Recurso            ../hooks/HOOKS.robot
Recurso            ../steps/login_steps.robot
Recurso            ../steps/home_steps.robot


*** Casos De Teste ***
#exemplo de caso de teste padrão
Usuário logado com sucesso
    [Tags]    ZEPHYR-####
    [Inicialização]    Iniciação do teste
    Dado Que eu faça login com o usuário e senha    55226714084    Teste@1234
    Então Devo ser logado no sistema
    [Finalização]    Finalização do teste

# exemplo de como reutilizar um caso de teste
Usuário logado com sucesso, caso de teste com reuso
    [Tags]    ZEPHYR-####
    [Inicialização]    Iniciação do teste
    Logar usuário    55226714084    Teste@1234
    [Finalização]    Finalização do teste

*** Palavras-Chave ***
# exemplo de como reutilizar um caso de teste, esse método pode ser usado em outros locais, caso necessário.
# mas é importante usar métodos mais complexos, lembrando que esse caso se trata apenas de um exemplo
# esse método é muito simples e a própria chamada existe no arquivo login_stps já seria o suficiente
Logar usuário
    [Argumentos]    ${usuario}    ${senha}
    Dado Que eu faça login com o usuário e senha    ${usuario}    ${senha}
    Então Devo ser logado no sistema
