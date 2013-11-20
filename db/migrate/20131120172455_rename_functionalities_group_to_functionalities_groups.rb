class RenameFunctionalitiesGroupToFunctionalitiesGroups < ActiveRecord::Migration
  def up
		rename_table :functionalities_group, :functionalities_groups
  end

  def down
		rename_table :functionalities_groups, :functionalities_group
  end
end
