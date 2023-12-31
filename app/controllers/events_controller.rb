class EventsController < ApplicationController
  before_action :admin_check, only: [:new, :create, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to @event, notice: 'Event created successfully.'
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id]).destroy
    redirect_to events_path, notice: 'Event deleted successfully.'
  end

  def admin_check
    redirect_to events_path, alert: 'Access denied' unless current_user.role == 1
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :event_date)
  end

end
