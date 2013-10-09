ActiveAdmin.register Post do
  actions :all, except: [:edit]
  index do
    column :title
    column :content
    column :user do |user|
      link_to user.user.name, admin_user_path(user)
    end
    column :created_at, :sortable => :crated_at do |post|
      post.created_at.strftime('%d/%m/%Y - %H:%M:%S:%p')
    end
    actions
  end
end
