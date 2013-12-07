class AlterColumnUserReceiverId < ActiveRecord::Migration
  def change
  	remove_column :messages, :user_receiver_id
  	add_column :messages, :user_receiver_id, :string
  end
end
