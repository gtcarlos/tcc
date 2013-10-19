class CreateShowcases < ActiveRecord::Migration
  def change
    create_table :showcases do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
