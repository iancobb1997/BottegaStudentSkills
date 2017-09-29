Rails.application.routes.draw do
  namespace :admin do
    resources :users

    root to: "users#index"
  end

  devise_for :users
  get "show/:id", to: "pages#user_show", as: "show"
  root to: "pages#index"
end
