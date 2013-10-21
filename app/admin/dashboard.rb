# encoding: utf-8

ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    panel "Usuarios Recentes" do
      table_for User.order("created_at desc").limit(3) do
        column "Nome", :name
        column "Criado em", :created_at
      end
      strong { link_to "Ver todos os usuarios", admin_usuarios_path }
    end

    panel "Postagens Recentes" do
      table_for Post.order("created_at desc").limit(3) do
        column "Titulo", :title
        column "Autor", :user
        column "Criado em", :created_at
      end
      strong { link_to "Ver todas as postagens", admin_postagens_path }
    end

  end

end
