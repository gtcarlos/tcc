# language: pt

Funcionalidade: Acessando o sistema
  Como um usuário não logado
  Com o objetivo de entrar no sistema
  Eu deveria poder colocar preencher meu e-mail e senha e ver a página inicial

  Cenário: E-mail e senha corretos
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail corretamente
    E eu preencho o campo Senha corretamente
    E eu clico em Entrar
    Então eu devo ver a página inicial

  Cenário: E-mail incorreto e senha correta
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail incorretamente
    E eu preencho o campo Senha corretamente
    E eu clico em Entrar
    Então eu devo ver a página de acesso
    #E eu devo ver uma mensagem de erro

  Cenário: E-mail correto e senha incorreta
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail corretamente
    E eu preencho o campo Senha incorretamente
    E eu clico em Entrar
    Então eu devo ver a página de acesso
    #E eu devo ver uma mensagem de erro

  Cenário: E-mail incorreto e senha incorreta
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail incorretamente
    E eu preencho o campo Senha incorretamente
    E eu clico em Entrar
    Então eu devo ver a página de acesso
    #E eu devo ver uma mensagem de erro

  Cenário: E-mail não válido
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail com valor não válido
    E eu clico em Entrar
    Então eu devo ver uma mensagem de erro
