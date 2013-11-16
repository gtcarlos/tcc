# encoding: utf-8

Quando(/^eu acesso a página inicial$/) do
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

Quando(/^preencho o campo Nome com "(.*?)"$/) do |nome|
  fill_in 'cadastro_nome', :with => nome
end

Quando(/^preencho o campo Email com "(.*?)"$/) do |email|
  fill_in 'cadastro_email', :with => email
end

Quando(/^preencho o campo Senha com "(.*?)"$/) do |senha|
  fill_in 'cadastro_senha', :with => senha
end

Quando(/^preencho o campo Confirmação da Senha com "(.*?)"$/) do |confirmacao|
  fill_in 'cadastro_confirma', :with => confirmacao
end

Quando(/^clico no botão Cadastrar$/) do
	click_button('cadastrar')
end
