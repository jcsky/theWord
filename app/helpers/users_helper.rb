module UsersHelper
  def new_or_edit_byenote
    if @user.byenote
      "修改再見手札"
    else
      "你還沒有填寫再見手札呢~快點完成它吧!"
    end
  end

end
