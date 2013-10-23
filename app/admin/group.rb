ActiveAdmin.register Group do

  menu :parent => "Administrador"

  index do
    column "Nome", :name
    # column "Funcionalidades", : functionalities do |functionality|
      
    # end
  end

  show do
  end

  for do |f|
  end

  filter :name, :label => "Nome"

end
