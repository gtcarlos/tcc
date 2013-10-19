class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :type
      t.integer :transaction
      t.datetime :date

      t.timestamps
    end
  end
end
