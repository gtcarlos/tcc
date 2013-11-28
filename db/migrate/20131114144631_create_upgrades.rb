class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.string :account_plan
      t.string :credit_card

      t.timestamps
    end
  end
end
