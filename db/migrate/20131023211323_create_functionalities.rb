class CreateFunctionalities < ActiveRecord::Migration
  def change
    create_table :functionalities do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
