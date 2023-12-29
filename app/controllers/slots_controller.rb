class SlotsController < ApplicationController
  before_action :find_event, only: [:new, :create, :show]

  def new
  end

  def create
    @slot = @event.slots.create(slot_params)
    redirect_to event_path(@event)
  end

  def show
    @event
    @slot = Slot.find(params[:id])
  end

  def destroy
    @slot = Slot.find(params[:id]).destroy
    redirect_to events_path
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

  private

  def slot_params
    params.require(:slot).permit(:slot_name, :slot_time)
  end
end
