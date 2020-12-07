class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @events = Event.all
    @events = @user.events
    favorites = Favorite.where(user_id: current_user.id).pluck(:event_id)  # ログイン中のユーザーのお気に入りのpost_idカラムを取得
    @favorite_list = Event.find(favorites) 
  end
end
