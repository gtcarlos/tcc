class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :flag
      t.string :name
      t.string :number
      t.datetime :date
      t.integer :seg_cod

      t.timestamps
    end
  end
end
