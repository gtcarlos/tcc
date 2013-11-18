class CreateFunctionalitiesGroups < ActiveRecord::Migration
  def up
		create_table :functionalities_group do |t|
			t.integer :group_id
			t.integer :functionality_id
		end
  end

  def down
  end
end
