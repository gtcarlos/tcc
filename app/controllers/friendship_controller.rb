class FriendshipController < ApplicationController
  def create
		@friend_id = params[:id]
    @friendship = current_user.friendships.build(friend_id: params[:friend][:friend_id])

    if @friendship.save
      redirect_to user_path(User.find(params[:friend][:friend_id])), :notice => 'Usuario seguido com sucesso'
    else
      redirect_to user_path(@friend_id), alert: 'Nao foi possivel seguir'
    end
  end

  def destroy
    @friend_id = params[:id]
    @friendship = current_user.friendships.find(:all, :conditions => ["friend_id = ?", @friend_id]).first
    @friendship.destroy
    redirect_to user_path(@friend_id), :notice => "Usuario removido com sucesso"
  end
end
