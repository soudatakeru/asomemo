class EventsController < ApplicationController
  before_action :authenticate_user!,only: [ :edit, :destroy, :new, :create]
  
  def index
    @events = Event.all
  end

  def new
    @event = EventsTag.new
  end
  def create
    
    @event = EventsTag.new(event_params)
    # binding.pry
    if @event.valid?
      #binding.pry
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
    @comment = Comment.new
    @comments = @event.comments.includes(:user)
  end

  def edit
    @event = EventsTag.find(params[:id])
     unless @event.user_id == current_user.id
       redirect_to action: :index
     end
  end

  def update
    event = EventsTag.new()
    if event.update(event_params)
    redirect_to event_path
    else
    render :show
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to root_path
    end
  end

  private

  def event_params
    params.require(:events_tag).permit(:name, :explanation, :facility_id, :scale_id, :category_id, :volunteer, :tagname, images: []).merge(user_id: current_user.id)
  end

  # def event_params2
  #   params.require(:event).permit(:name, :explanation, :facility_id, :scale_id, :category_id, :volunteer, images: []).merge(user_id: current_user.id, tag: params[:tagname])
  # end
end
