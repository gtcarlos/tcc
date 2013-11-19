# encoding: utf-8

Quando(/^eu acesso a página inicial$/) do
  visit root_path
end

Dado(/^que eu esteja na página inicial$/) do
  visit root_path
end

Então(/^ver a barra de menu$/) do
  page.should have_css("div.navbar")
end

Então(/^eu devo ver a página inicial$/) do
  page.current_path.should == home_index_path
end

Quando(/^clico no botão Cadastre\-se$/) do
  click_button('cadastro')
end

Então(/^eu devo ver a página de cadastro$/) do
  page.current_path.should == new_user_registration_path
end

Quando(/^preencho o campo Nome com "(.*?)"$/) do |name|
  fill_in 'name', :with => name
end

Quando(/^preencho o campo E-mail com "(.*?)"$/) do |email|
  fill_in 'email', :with => email, exact: true
end

Quando(/^preencho o campo Senha com "(.*?)"$/) do |password|
  fill_in 'password', :with => password, exact: true
end

Quando(/^preencho o campo Confirmação da Senha com "(.*?)"$/) do |confirmation|
  fill_in 'confirmation', :with => confirmation
end

Quando(/^clico no botão Cadastrar$/) do
	click_button('register')
end
