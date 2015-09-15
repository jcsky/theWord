class Admin::ByenotesController < ApplicationController
  before_action :authenticate_user!, :check_admin

  def index
    @users = User.includes(:byenote)

  end


  protected

  def check_admin
    unless current_user.admin?
      flash[:alert] = "Nooooooooooo!"
      redirect_to root_path
      return
    end
  end

end
