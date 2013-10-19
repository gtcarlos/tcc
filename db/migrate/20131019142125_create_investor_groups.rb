class CreateInvestorGroups < ActiveRecord::Migration
  def change
    create_table :investor_groups do |t|
      t.string :name
      t.integer :area
      t.integer :privacy
      t.text :description

      t.timestamps
    end
  end
end
