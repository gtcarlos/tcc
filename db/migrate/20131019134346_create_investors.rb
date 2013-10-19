class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.string :name
      t.string :company
      t.string :location
      t.int :area
      t.string :history
      t.text :bio

      t.timestamps
    end
  end
end
