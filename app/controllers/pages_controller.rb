class PagesController < ApplicationController
  def index
    @users = User.all
  end

  def user_show
    @user = User.find(params[:id])
  end
end
