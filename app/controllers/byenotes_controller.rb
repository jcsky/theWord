class ByenotesController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = current_user
    @user.build_byenote = params[:byenote]
    byebug
  end
end
