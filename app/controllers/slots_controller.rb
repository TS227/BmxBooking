class SlotsController < ApplicationController
  before_action :find_event, only: [:new, :create, :show]
  before_action :find_slotuser, only: [:show]

  def new
  end

  def create
    @slot = @event.slots.create(slot_params)
    redirect_to event_path(@event)
  end

  def show
    @user_slot = SlotsUser.find_by(slot_id: params[:id], user_id: current_user.id)
    @slot = Slot.find(params[:id])
  end

  def destroy
    @slot = Slot.find(params[:id]).destroy
    redirect_to events_path
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

  def find_slotuser
    @user_slot = SlotsUser.find_by(slot_id: params[:id], user_id: current_user.id)
  end

  private

  def slot_params
    params.require(:slot).permit(:slot_name, :slot_time)
  end
end
