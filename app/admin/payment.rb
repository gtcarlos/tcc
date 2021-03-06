ActiveAdmin.register Payment, :as => "Pagamento" do
  config.clear_action_items!

  menu :parent => "Usuario Comum", :label => "Pagamentos"

  actions :all, except: [:new, :edit]
  config.sort_order  ="created_at desc"

  index do
    column "ID", :id
    column "Usuario", :user do |payment|
      link_to pagamento.user.name, admin_usuarios_path(user) 
    end
    column "Tipo", :type
    column "Transacao", :transaction
    column "Data da Transacao", :date
    column "Criado em", :created_at do |payment|
      payment.created_at.strftime('%d/%m/%Y - %H:%M:%S')
    end
    actions :html => {:class => "actions"}
  end

  filter :id, :label => "ID"
  filter :user, :label => "Usuario"
  filter :type, :label => "Tipo", :as => :select
  filter :transaction, :label => "Transacao"
  filter :date, :label => "Data"
  filter :created_at, :label => "Criado em"

end
