class EventController < ApplicationController
  def new
    @event = Event.new
  end

  def show

	
  end

  def index
    @event = Event.all
  end

  def create
    @event = Event.new
    @event.duration = params[:duration]
    @event.title = params[:title]
    @event.price = params[:price]
    @event.location = params[:location]
    @event.start_date = params[:start_date]
    @event.user = current_user
    if
      @event.save
      redirect_to event_index_path
    else
      redirect_to new_event_path
    end
    
  end

  def update
  end

  def destroy
        
  end

  def edit
  end
end









































































































































































































































































