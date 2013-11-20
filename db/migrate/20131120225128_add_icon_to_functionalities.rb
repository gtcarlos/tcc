class AddIconToFunctionalities < ActiveRecord::Migration
  def change
    add_column :functionalities, :icon, :string
  end
end
