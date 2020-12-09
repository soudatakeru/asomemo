class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = Favorite.where(user_id: @user.id).all
  end

  def create
    @user_id = current_user.id
    @event_id = Event.find(params[:id]).id
    @favorite = Favorite.new(event_id: @event_id, user_id: @user_id)
    if @favorite.save
      redirect_to event_path, notice: "お気に入りに登録しました"
    else
      flash[:aleat] = "既に登録されています"
      redirect_to event_path
    end
  end

  def show_favorites
    @event = Event.find(params[:id])
    @favorites = Favorite.where(event_id: @event.id).all
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      redirect_to favorites_path(current_user)
    end
  end
end
