class DeleteTableInvestors < ActiveRecord::Migration
  def up
		drop_table :investors
  end

  def down
  end
end
