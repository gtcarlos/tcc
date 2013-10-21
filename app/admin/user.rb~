ActiveAdmin.register User, :as => "Usuario" do
  menu :priority => 1, :label => "Usuarios"

  actions :all, except: [:edit]
  config.sort_order = "created_at desc"

  index do
    column "ID", :id
    column "Nome", :name
    column "E-mail", :email
    column "Criado em", :created_at, :sortable => :created_at do |user|
      user.created_at.strftime('%d/%m/%Y, %H:%M:%S')
    end
    column "Nivel de Acesso", :roles_mask
    actions :html => {:class => "actions"}
   end

  show do
  row "ID", :id
  end

  filter :name
  filter :email
  filter :created_at
  filter :roles_mask

end
