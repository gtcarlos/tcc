# encoding: utf-8

ActiveAdmin.register Report, :as => "Denuncias" do
  
  config.clear_action_items!

  menu :parent => "Usuario Comum", :label => "Denuncias"

  actions :all, except: [:new, :edit]

  index do
    column "ID", :id
    column "Usuario", :user do |report|
      link_to report.user.name, admin_usuarios_path(user)
    end
    column "Motivo", :reason
    column "Criado em", :created_at do |report|
      report.created_at.strftime('%d/%m/%Y - %H:%M:%S')
    end
    column "Situacao", :startus
    actions :html => {:class => "actions"}
  end

  filter :id
  filter :user, :label => "Usuario"
  filter :created_at, :label => "Criado em"
  filter :status, :as => :select, :label => "Situacao"

end
