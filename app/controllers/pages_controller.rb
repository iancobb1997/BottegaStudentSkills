class PagesController < ApplicationController
  access all: [:index], [:user, :admin] => :all
  def index
    if fetch_params
      User.reindex
      @users = User.search(fetch_params,
                            fields: ["skills", "name"]
                          )
    else
      @users = User.all
    end
  end

  def user_show
    @user = User.find(params[:id])
  end

  private
    def fetch_params
      params[:q]
    end
end
