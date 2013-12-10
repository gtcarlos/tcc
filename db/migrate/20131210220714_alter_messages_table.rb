class AlterMessagesTable < ActiveRecord::Migration
  def up
		add_column :messages, :user_receiver_id, :integer
		add_column :messages, :user_id, :integer
		add_column :messages, :title, :string
		add_column :messages, :read_flag, :string
  end

  def down
  end
end
