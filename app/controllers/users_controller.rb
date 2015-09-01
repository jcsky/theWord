class UsersController < ApplicationController
  before_action :authenticate_user!

  def theword #再見手札頁面
    @user = current_user
    @byenote = @user.byenote
  end

  def show #個人資料修改頁面
    @user = current_user
    @byenote = @user.byenote
  end

  def profile

  end

  def update

  end
end
