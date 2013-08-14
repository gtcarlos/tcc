# language: pt

Funcionalidade: Acessando o sistema
  Como um usuário
  Com o objetivo de entrar no sistema
  Eu deveria poder colocar meu e-mail e minha senha e ver a página inicial

  Cenário: E-mail e senha corretos
    Dado que eu seja um usuário cadastrado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail e o campo Senha corretamente
    E clico em Entrar
    Então eu devo ver a página inicial

  Cenário: E-mail incorreto e senha correta
    Dado que eu seja um usuário cadastrado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail incorretamente e o campo Senha corretamente
    E clico em Entrar
    Então eu devo ver a página de cadastro de usuário
    E uma mensagem de erro

  Cenário: E-mail correto e senha incorreta
    Dado que eu seja um usuário cadastrado
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail corretamente e o campo Senha corretamente
    E clico em Entrar
    Então eu devo ver a página de cadastro de usuário
    E uma mensagem de erro

  Cenário: E-mail e senha incorretos
    Dado que eu seja um usuário
    E eu esteja na página inicial
    Quando eu preencho o E-mail e o campo Senha incorretamente
    E clico em Entrar
    Então eu devo ver a página de cadastro de usuário
    E uma mensagem de erro

  Cenário: E-mail não valido
    Dado que eu seja um usuário
    E eu esteja na página inicial
    Quando eu preencho o campo E-mail com um e-mail não válido
    E clico em entrar
    Então eu devo ver uma mensagem de erro

