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
    f.input :image, :label => "Seleciona a imagem desejada (Tamanho maximo: 5mb)", :as => :file
   end
    f.buttons
  end

  show do |badge|
    attributes_table do
      row :name
      row :description
      row :created_at
      row :image do
        image_tag badge.image.url
      end
    end
  end
end
