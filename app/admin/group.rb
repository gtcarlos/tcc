ActiveAdmin.register Group, :as => "Grupo" do

  menu :parent => "Administrador"

  index do
    column "ID", :id
    column "Nome", :name
		actions
  end

	# Edit
	form do |f|
		f.inputs do
			f.input :name, :label => "Nome"
			f.input :functionalities, :multiple => true, :label => "Funcionalidades"
		end
		f.actions
	end

	# Show
  show do
		attributes_table do
      row "ID" do
        resource.id
      end
			row "Nome" do
			 resource.name
			end
			row "Funcionalidades" do
				grupo.functionalities.map(&:name).join("<br />").html_safe
			end
		end
  end

  filter :name, :label => "Nome"
	filter :functionalities, :label => "Funcionalidades"

end
