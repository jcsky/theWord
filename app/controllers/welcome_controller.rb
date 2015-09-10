class WelcomeController < ApplicationController
  before_action :new_or_current_user

  def index
    @byenote = Byenote.new
    @btitle = "最後一天別讓家人煩腦"
    @stitle = "留下你的器捐意願、安寧意願、喪葬意願"
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
    if @user
      redirect_to read_path(:theword => @user.page_url)
    else
      render :search
    end
  end

  def read
    @user = User.find_by_page_url(params[:theword])
    if @user
      @byenote = @user.byenote
      render :read
    else
      redirect_to root_path
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
