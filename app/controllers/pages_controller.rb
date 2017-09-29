class PagesController < ApplicationController
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
    @user = User.find(fetch_params)
  end

  private
    def fetch_params
      params[:q]
    end
end
