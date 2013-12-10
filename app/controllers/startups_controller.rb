class StartupsController < InheritedResources::Base
	
	def show
    	@startup = Startup.find(params[:id])    
		@posts = current_user.startups { |posts| Posts.find(posts.id) }

		respond_to do |format|
      	format.html # show.html.erb
      	format.json { render json: @user }
      end
	end

end