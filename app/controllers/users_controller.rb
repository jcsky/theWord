class UsersController < ApplicationController
  before_action :authenticate_user!

  def theword #再見手札頁面
    @user = current_user
    if @user.byenote
      @byenote = @user.byenote
    else
      @byenote = Byenote.new
      @byenote.user_id = current_user.id
    end
  end

  def show #個人資料修改頁面
    @user = current_user
    @byenote = @user.byenote
  end

  private

end