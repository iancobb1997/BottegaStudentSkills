Rails.application.routes.draw do
  devise_for :users
  get "show/:id", to: "pages#user_show", as: "show"
  root to: "pages#index"
end
