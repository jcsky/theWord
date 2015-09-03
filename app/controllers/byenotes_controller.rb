class ByenotesController < ApplicationController
  # before_action :authenticate_user!
  def create
    if user_signed_in? == false
      session[:byenote_params] = byenote_params
      redirect_to new_user_session_path
    else
      redirect_to update_byenote_path
    end
  end

  def byenote_params
    params.require(:byenote).permit(:user_id, :funeral, :some_message, :donate_select, :donate_heart, :donate_lung, :donate_liver, :donate_pancreas, :donate_kidney, :donate_smll_intestine, :donate_cornea, :donate_skin, :donate_skeleton, :donate_heart_valve, :donate_artery, :hospice_palliative, :hospice_no_cpr, :hospice_life_sustaining)
  end
end
