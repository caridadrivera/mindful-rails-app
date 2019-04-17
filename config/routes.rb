Rails.application.routes.draw do

  root 'sessions#index'

  resources :session
  resources :friendships
  resources :activities
  resources :users

  get "/users/:id/days", to: "users#days_index", as: "days"
  post "/activity_instances/new", to: "activities#create_activity_instance"
  get "/", to: "sessions#new", as: "login"
  post "/",   to: 'sessions#create'
  delete "/", to: "sessions#destroy", as: "logout"

end
