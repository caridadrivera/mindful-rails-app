Rails.application.routes.draw do

  root 'sessions#index'

  get "/activity_instances/new", to: "activity_instances#create"
  patch "users/:id/happiness", to: "days#update"
  resources :session
  resources :friendships
  resources :activities
  resources :users
  resources :activity_instances

  get "/users/:id/days/:day_id", to: "days#show", as:"day"
  delete "/users/:id/days/:day_id", to: "activity_instances#destroy"
  get "/users/:id/days", to: "users#user_history", as: "days"
  post "/users/:id/days", to: "users#user_history_create"
  get "/", to: "sessions#new", as: "login"
  post "/",   to: 'sessions#create'
  delete "/", to: "sessions#destroy", as: "logout"

end
