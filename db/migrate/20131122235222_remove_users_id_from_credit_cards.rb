class RemoveUsersIdFromCreditCards < ActiveRecord::Migration
  def up
  	remove_column :credit_cards, :users_id
  end

  def down
  end
end
