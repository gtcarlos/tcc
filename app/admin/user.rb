ActiveAdmin.register User, :as => "Usuario" do

	config.clear_action_items!

	menu :parent => "Usuario Comum", :priority => 1, :label => "Usuarios"

	actions :all, except: [:new]
	config.sort_order = "created_at desc"

	# Index
	index do
		column "ID", :id
		column "Nome", :name
		column "E-mail", :email
		column "Criado em", :created_at, :sortable => :created_at do |user|
			user.created_at.strftime('%d/%m/%Y, %H:%M:%S')
		end
		column "Grupo", :group
		actions :html => {:class => "actions"}
	end

	# Edit
	form do |f|
		f.inputs do
			f.input :group, :include_blank => false, :label => "Grupo"
		end
		f.actions
	end

	#Show
	show do |ad|
		attributes_table do
			row "ID" do
				resource.id
			end
			row "Nome" do
				resource.name
			end
			row "E-mail" do
				resource.email
			end
			row "Criado em" do
				resource.created_at
			end
			row "Grupo" do
				resource.group
			end
		end
	end

	# Filter
	filter :name, :label => "Nome"
	filter :email, :label => "E-Mail"
	filter :created_at, :label => "Criado em"
	filter :group, :label => "Grupo", :as => :select

end
