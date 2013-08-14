class HomeController < ApplicationController
  def show
   if user_signed_in?
     # redirect_to users_path
     render "home/index"
   else
      render "home/index"
   end
  end
end
