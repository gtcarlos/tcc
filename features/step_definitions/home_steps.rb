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
