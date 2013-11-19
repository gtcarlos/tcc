# encoding: utf-8

Dado(/^que eu seja um usuário não logado$/) do
  visit destroy_user_session_path
end

Dado(/^eu esteja na página inicial$/) do
  visit root_path
end

Quando(/^eu clico em Entrar$/) do
  click_button('login')
end

Então(/^eu devo ver o mural$/) do
  page.current_path.should == posts_path
end

Então(/^eu devo ver a página de acesso$/) do
  page.current_path.should == new_user_session_path
end

Então(/^eu devo ver uma mensagem de erro$/) do
  page.should have_content("Please enter an email address.")
end


