class StreamController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: "Mensagem publicada com sucesso" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
