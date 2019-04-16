Rails.application.routes.draw do

  root 'homes#index'

  resources :sessions, only: [:new, :create]
  # resources :activity_instances, only: [:new, :create, :show, :delete, :update]
  # resources :friendships
  # resources :activities
  # resources :days
  # get "/signup", to: "users#new", as: "signup"
  resources :users, only: [:show, :create, :show, :new]



    get "/login", to: "sessions#new", as: "login"
    post "/login",   to: 'sessions#create'
    delete "/logout", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
