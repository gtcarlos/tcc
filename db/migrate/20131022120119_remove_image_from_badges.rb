class RemoveImageFromBadges < ActiveRecord::Migration
  def up
    remove_column :badges, :image
  end

  def down
    add_column :badges, :image, :string
  end
end
