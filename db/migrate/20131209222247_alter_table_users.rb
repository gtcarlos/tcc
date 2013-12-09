class AlterTableUsers < ActiveRecord::Migration
  def up
		add_column :users, :company, :string
		add_column :users, :location, :string
		add_column :users, :area, :string
		add_column :users, :history, :string
		add_column :users, :bio, :text
  end

  def down
  end
end
