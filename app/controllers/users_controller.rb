class UsersController < ApplicationController
  before_action :authenticate_user!

  def theword #再見手札頁面
    @user = current_user
  end

  def show #個人資料修改頁面
    @user = current_user
  end

  def profile

  end

  def update

  end
end
