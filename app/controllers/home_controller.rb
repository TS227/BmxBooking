class HomeController < ApplicationController
  before_action :admin_check, only: [:admin, :give_admin, :remove_admin]

  def index
  end
  def contact
  end

  def admin
    @users = User.all
  end

  def give_admin
    @user = User.find(params[:id])
    @user.role = 1
    @user.save
    redirect_to events_path, notice: 'Admin added successfully.'
  end

  def remove_admin
    @user = User.find(params[:id])
    @user.role = 0
    @user.save
    redirect_to events_path, notice: 'Admin removed successfully.'
  end

  def admin_check
    redirect_to events_path, alert: 'Access denied' unless current_user.role == 1
  end

end
