class StreamController < ApplicationController
  before_filter :authenticate_user!, :except => :new
  def index
    @user = User.for_user(current_user)
    #@posts = Post.all
  end
end
