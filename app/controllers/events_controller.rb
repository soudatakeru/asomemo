class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :destroy, :new, :create]
  before_action :search_event, only: [:index, :search]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    tag_list = params[:event][:tag_ids].split(',')
    if @event.save
      @event.save_tags(tag_list)
      redirect_to root_url, notice: 'イベントを投稿しました'
    else
      render 'new'
    end
  end

  def search
    @results = @p.result
  end

  def search_tag
    @events = Event.search(params[:keyword])
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
    @comments = @event.comments.includes(:user)
  end

  def edit
    @event = Event.find(params[:id])
    @tag_list = @event.tags.pluck(:tag_name).join(',')
  end

  def update
    @event = Event.find(params[:id])
    tag_list = params[:event][:tag_names].to_s.split(',')
    if @event.update_attributes(event_params)
      @event.save_tags(tag_list)
      redirect_to @event, notice: 'イベントを編集しました'
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    redirect_to root_path, notice: 'イベントを削除しました' if @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :explanation, :facility_id, :scale_id, :category_id, :volunteer,
                                  images: []).merge(user_id: current_user.id)
  end

  def tag_params
    params.require(:event).permit(:tag_names)
  end

  def search_event
    @p = Event.ransack(params[:q])
  end
end
