class PagesController < ApplicationController
  def index
    if fetch_params
      @users = User.where("LOWER(skills) LIKE '%#{fetch_params.downcase}%'")
      # @users = User.search "ruby"
    else
      @users = User.all
    end
  end

  def user_show
    @user = User.find(fetch_params)
  end

  private
    def fetch_params
      params[:q]
    end
end
