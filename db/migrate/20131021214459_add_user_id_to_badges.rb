class AddUserIdToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :user_id, :integer
    add_foreign_key :badges, :users, dependent: :delete
  end
end
