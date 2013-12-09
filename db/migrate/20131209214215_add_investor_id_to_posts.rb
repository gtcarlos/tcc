class AddInvestorIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :investor_id, :integer
  end
end
