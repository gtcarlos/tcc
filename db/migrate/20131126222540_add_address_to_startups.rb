class AddAddressToStartups < ActiveRecord::Migration
  def change
  	add_column :startups, :city, :string
  	add_column :startups, :state, :string
  end
end
