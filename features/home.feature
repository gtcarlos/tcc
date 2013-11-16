# language: pt

Funcionalidade: Visualizar a página inicial
  Como um não logado
  Com o objetivo de ver o website
  Eu deveria poder acessar a URL e ver as informações da página inicial

  Cenário: Acessar a página inicial
    Dado que eu seja um usuário não logado
    Quando eu acesso a página inicial
    Então eu devo ver a página inicial
    E ver a barra de menu

  Cenário: Clicar no botão Cadastre-se
    Dado que eu seja um usuário não logado
    Quando eu acesso a página inicial
    E clico no botão Cadastre-se
    Então eu devo ver a página de cadastro
