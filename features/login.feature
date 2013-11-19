# language: pt

Funcionalidade: Acessando o sistema
  Como um usuário não logado
  Com o objetivo de entrar no sistema
  Eu deveria poder colocar preencher meu e-mail e senha e ver a página inicial

  Cenário: E-mail e senha corretos
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando preencho o campo E-mail com "teste@teste.com.br"
    E preencho o campo Senha com "teste1234"
    E eu clico em Entrar
    Então eu devo ver o mural

  Cenário: E-mail incorreto e senha correta
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando preencho o campo E-mail com "teste@teste2.com.br"
    E preencho o campo Senha com "teste1234"
    E eu clico em Entrar
    Então eu devo ver a página de acesso
    #E eu devo ver uma mensagem de erro

  Cenário: E-mail correto e senha incorreta
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando preencho o campo E-mail com "teste@teste.com.br"
    E preencho o campo Senha com "teste4321"
    E eu clico em Entrar
    Então eu devo ver a página de acesso
    #E eu devo ver uma mensagem de erro

  Cenário: E-mail incorreto e senha incorreta
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando preencho o campo E-mail com "teste@teste2.com.br"
    E preencho o campo Senha com "teste4321"
    E eu clico em Entrar
    Então eu devo ver a página de acesso
    #E eu devo ver uma mensagem de erro

  Cenário: E-mail não válido
    Dado que eu seja um usuário não logado
    E eu esteja na página inicial
    Quando preencho o campo E-mail com "teste"
    E eu clico em Entrar
    Então eu devo ver uma mensagem de erro
    E eu esteja na página inicial
    #Então eu devo ver a página de acesso
