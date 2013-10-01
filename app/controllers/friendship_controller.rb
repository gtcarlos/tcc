class FriendshipController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend][:friend_id])

    if @friendship.save
      redirect_to user_path(current_user), notice: 'Usuario seguido com sucesso'
    else
      redirect_to user_path(current_user), alert: 'Nao foi possivel seguir'
    end
  end

  def destroy
    @friend_id = params[:friend_id]
    @friendship = current_user.friendships.find(:all, :conditions => ["friend_id = ?", @friend_id]).first
    @friendship.destroy
    redirect_to user_path(current_user), alert: 'Usuario removido com sucesso'
  end
end