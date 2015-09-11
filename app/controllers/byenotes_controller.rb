class ByenotesController < ApplicationController
  # before_action :authenticate_user!
  def create
    @user = current_user
    if @user
      if current_user.byenote
        redirect_to update_byenote_path
      else
        @byenote = Byenote.new(byenote_params)
        @byenote.user_id = @user.id
        @byenote.save
      end
      redirect_to theword_path
    else
      session[:byenote_params] = byenote_params
      redirect_to new_registration_path(User.new)
    end
  end

  def update
    if current_user.byenote.update(byenote_params)
      redirect_to theword_path
    else
      redirect_to :back
    end
  end

  private

  def byenote_params
    params.require(:byenote).permit(:user_id, :funeral, :some_message, :donate_select, :donate_heart, :donate_lung, :donate_liver, :donate_pancreas, :donate_kidney, :donate_smll_intestine, :donate_cornea, :donate_skin, :donate_skeleton, :donate_heart_valve, :donate_artery, :hospice_palliative, :hospice_no_cpr, :hospice_life_sustaining)
  end
end
