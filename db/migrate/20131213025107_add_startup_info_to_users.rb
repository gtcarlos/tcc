class AddStartupInfoToUsers < ActiveRecord::Migration
  def up
    add_column :users, :fantasy_name, :string
    add_column :users, :cnpj_duns, :string
    add_column :users, :contact, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :description, :text
  end
end
