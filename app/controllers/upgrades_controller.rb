class UpgradesController < InheritedResources::Base
def create
	@upgrade = Upgrade.new(params[:upgrade])
	current_user.update_attribute :group_id, 3
end

end
