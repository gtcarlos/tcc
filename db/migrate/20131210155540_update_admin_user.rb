class UpdateAdminUser < ActiveRecord::Migration
  def up
		AdminUser.first.update_attribute :password, "startme2013"
  end

  def down
  end
end
