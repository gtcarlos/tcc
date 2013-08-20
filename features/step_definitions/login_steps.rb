# encoding: utf-8

Dado(/^que eu seja um usuário não logado$/) do
  visit root_path
end

Dado(/^eu esteja na página inicial$/) do
  visit root_path
end

Quando(/^eu preencho o campo E\-mail corretamente$/) do
  fill_in 'email', :with => "teste@teste.com.br"
end

Quando(/^eu preencho o campo Senha corretamente$/) do
  fill_in 'senha', :with => "teste1234"
end

Quando(/^eu clico em Entrar$/) do
  click_button('entrar')
end

Então(/^eu devo ver a página inicial$/) do
  page.should have_content("Signed in successfully.")
end

Quando(/^eu preencho o campo E\-mail incorretamente$/) do
  fill_in 'email', :with => "teste@teste2.com.br"
end

Então(/^eu devo ver a página de acesso$/) do
  page.current_path.should == new_user_session_path
end

Então(/^eu devo ver uma mensagem de erro$/) do
  page.should have_content("Please enter an email address.")
end

Quando(/^eu preencho o campo Senha incorretamente$/) do
  fill_in 'senha', :with => "teste4321"
end

Quando(/^eu preencho o campo E\-mail com valor não válido$/) do
  fill_in 'email', :with => "teste"
end
