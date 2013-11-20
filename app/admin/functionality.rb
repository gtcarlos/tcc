ActiveAdmin.register Functionality, :as => "Funcionalidade" do

	menu :parent => "Administrador"

	config.sort_order = "created_at desc"

	# Index
	index do
		column "ID", :id
		column "Nome", :name
		column "URL", :url
		column "Criado em", :created_at
		actions
	end

	# Edit
	form do |f|
		f.inputs do
			f.input :name, :label => "Nome"
			f.input :url, :label => "URL"
			f.input :groups, :multiple => true, :label => "Grupos"
		end
		f.actions
	end

	# Show
	show do
		attributes_table do
			row "Nome" do
				resource.name
			end
			row "URL" do
				resource.url
			end
			row "Grupos" do
				funcionalidade.groups.map(&:name).join("<br />").html_safe
			end
		end
	end

	# Filter
	filter :name, :label => "Nome"
	filter :url, :label => "URL"
	filter :groups, :label => "Grupo"

end
