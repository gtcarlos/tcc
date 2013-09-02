class StreamController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @posts = Post.all
    #@posts = Post.paginate
    @post = Post.new
  end
end
