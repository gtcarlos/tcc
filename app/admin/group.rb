ActiveAdmin.register Group do

  menu :parent => "Administrador"

  index do
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
			row "Nome" do
			 resource.name
			end
			row "Funcionalidades" do
				group.functionalities.map(&:name).join("<br />").html_safe
			end
		end
  end

  filter :name, :label => "Nome"
	filter :functionalities, :label => "Funcionalidades"

end
