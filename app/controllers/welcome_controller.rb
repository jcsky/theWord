class WelcomeController < ApplicationController
  def index
    @user = User.new
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的器捐意願、安寧意願、喪葬意願"
    @search_text = "輸入Email查詢親友的再見手札"
  end

  def organ
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的器捐意願"
    @search_text = "輸入Email查詢親友的器捐意願"
  end

  def hospice
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的安寧意願"
    @search_text = "輸入Email查詢親友的安寧意願"
  end

  def funeral
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的喪葬意願"
    @search_text = "輸入Email查詢親友的喪葬意願"
  end

end
