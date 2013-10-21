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

  form do |f|
   f.inputs "Detalhes" do
    f.input :name, :label => "Nome"
    f.input :description, :label => "Descricao"
   end
   f.inputs "Imagem" do
    f.input :image, :label => "Imagem"
   end
    f.buttons
  end
end
