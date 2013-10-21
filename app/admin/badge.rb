ActiveAdmin.register Badge do
  menu :parent => "Administrador"

  actions :all

  index do
    column "ID", :id
    column "Nome", :name
    column "Descricao", :description
    column "Imagem", :image
    column "Criado em", :created_at do |badge|
      badge.created_at.strftime('%d/%m/%Y - %H:%M:%S')
    end
    actions :html => {:class => "actions"}
  end

  filter :id, :label => "ID"
  filter :name, :label => "Nome"
  filter :description, :label => "Descricao"
  filter :created_at, :label => "Criado em"
end
