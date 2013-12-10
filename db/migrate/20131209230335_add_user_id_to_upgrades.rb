class AddUserIdToUpgrades < ActiveRecord::Migration
  def change
  	add_column :upgrades, :user_id, :integer
  end
end
