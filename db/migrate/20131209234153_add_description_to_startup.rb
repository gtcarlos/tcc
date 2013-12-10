class AddDescriptionToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :description, :text
  end
end
