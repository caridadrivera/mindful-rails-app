Rails.application.routes.draw do
  resources :activity_instances
  resources :friendships
  resources :activities
  resources :days
  resources :users


  # get "signup", to: "users#new", as: "signup"
  # get ‘"login", to: "sessions#new", as: "login"
  # get "logout", to: "sessions#destroy", as: "logout"

  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
