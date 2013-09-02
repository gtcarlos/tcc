class FriendshipController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend][:friend_id])

    if @friendship.save
      #redirect_to user_path(current_user.username), notice: 'Amigo adicionado com sucesso'
      notice: 'Usuario seguido com sucesso'
    else
      #redirect_to user_path(current_user.username), alert: 'Nao foi possivel seguir'
      alert: 'Nao foi possivel seguir'
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    #redirect_to user_path(current_user.username), alert: 'Usuario removido com sucesso'
    alert: 'Usuario removido com sucesso'
end
