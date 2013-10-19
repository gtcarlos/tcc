class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :privacy
      t.string :local
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
