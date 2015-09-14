class WelcomeController < ApplicationController
  before_action :new_or_current_user

  def index
    @byenote = Byenote.new
    @btitle = "1分鐘寫完你的生前意願"
    @stitle = "親友能隨時查詢你的器捐意願、安寧意願、喪葬意願"
  end

  def organ
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的器捐意願"
  end

  def hospice
    @byenote = Byenote.new
    @btitle = "如果我沒醒過來<br/>不要串通醫師凌遲我!"
    @stitle = "留下你的安寧意願"
  end

  def funeral
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的喪葬意願"
  end

  def search

  end

  def search_post
    @user = User.find_by_email params[:search_email]
    @user? @byenote = @user.byenote : @byenote = nil

    if @byenote
      redirect_to read_path(:theword => @user.page_url)
      flash[:success] = "你查詢的是 #{@user.email} 的再見手札"
    else
      flash[:fault] = "#{params[:search_email]} 尚未填寫再見手札"
      render :search
    end
  end

  def read
    @user = User.find_by_page_url(params[:theword])
    @byenote = @user.byenote
    if @byenote
      render :read
    else
      redirect_to :search
    end
  end

  private

  def new_or_current_user
    if current_user
      @user = current_user
      @byenote = @user.byenote
    else
      @user = User.new
      @byenote = Byenote.new
    end
  end

end
