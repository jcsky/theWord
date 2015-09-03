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

  def profile

  end


  private

  def byenote_params
    params.require(:byenote).permit(:user_id, :funeral, :some_message, :donate_select, :donate_heart, :donate_lung, :donate_liver, :donate_pancreas, :donate_kidney, :donate_smll_intestine, :donate_cornea, :donate_skin, :donate_skeleton, :donate_heart_valve, :donate_artery, :hospice_palliative, :hospice_no_cpr, :hospice_life_sustaining)
  end

end
