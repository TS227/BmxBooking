class SlotsUsersController < ApplicationController
  before_action :authenticate_user!

  def create
    user = current_user
    slot = Slot.find(params[:slot_id])
    user.slots << slot
    redirect_to events_path, notice: 'Slot assigned to user successfully.'
  end

  def destroy
    @user_slot = SlotsUser.find(params[:id]).destroy
    redirect_to events_path, notice: 'Slot removed from user successfully.'
  end
end
