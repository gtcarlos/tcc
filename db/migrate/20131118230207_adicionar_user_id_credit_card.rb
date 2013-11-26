class AdicionarUserIdCreditCard < ActiveRecord::Migration
  def change
  	add_column :credit_cards, :users_id, :integer
  end
end
