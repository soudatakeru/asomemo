class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    binding.pry
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :explanation, :facility_id, :scale_id, :category_id, :volunteer, images: []).merge(user_id: current_user.id)
  end


end
