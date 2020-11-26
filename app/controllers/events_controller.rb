class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = EventsTag.new
  end

  def create
    @event = EventsTag.new(event_params)
    if @event.valid?
      @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    return nil if params[:keyword] == ""
    tag = Tag.where(['tagname LIKE ?', "%#{params[:keyword]}%"] )
    render json:{ keyword: tag }
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:events_tag).permit(:name, :explanation, :facility_id, :scale_id, :category_id, :volunteer, :tagname, images: []).merge(user_id: current_user.id)
  end
end
