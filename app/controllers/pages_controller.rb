class PagesController < ApplicationController
  def index
    if params[:q]
      @users = User.search "ruby"
    else
      @users = User.all
    end
  end

  def user_show
    @user = User.find(params[:q])
  end
end
