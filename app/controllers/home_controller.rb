class HomeController < ApplicationController
  def show
   if user_signed_in?
     # redirect_to users_path
     redirect_to stream_index_path
   else
      redirect_to home_index_path
   end
  end
end
