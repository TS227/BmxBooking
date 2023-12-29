class EventsController < ApplicationController
  def index
    @events = Event.all
  end


  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id]).destroy
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:event_name, :event_date)

  end

end
