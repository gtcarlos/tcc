class AddEmailPolicyToUser < ActiveRecord::Migration
  def change
    add_column :users, :email_policy, :integer
  end
end
