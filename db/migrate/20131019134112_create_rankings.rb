class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.string :name
      t.integer :point

      t.timestamps
    end
  end
end
