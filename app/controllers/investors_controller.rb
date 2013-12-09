class InvestorsController < InheritedResources::Base
	def index
		if current_user.investor.nil?
			redirect_to new_investor_path, :alert => "Voce ainda nao tem um perfil de investidor criado"
		else
			redirect_to investor_path(current_user.investor.id)
		end
	end

	def show
		@user = User.find(params[:id]) 
		@posts = @user.investor.posts.all
		@investor = @user.investor
	end
end
