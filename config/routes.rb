Rails.application.routes.draw do
  namespace :admin do
    resources :users

    root to: "users#index"
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  get 'index', to: "pages#index", as: "pages_index"
  get "show/:id", to: "pages#user_show", as: "show"
  root to: "pages#landing_page"
end
