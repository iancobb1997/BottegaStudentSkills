Rails.application.routes.draw do
  namespace :admin do
    resources :users

    root to: "users#index"
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
      
  get "show/:id", to: "pages#user_show", as: "show"
  root to: "pages#index"
end
