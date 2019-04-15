Rails.application.routes.draw do
  resources :friendships, only: [:index, :show, :new]
  resources :activities, only: [:index, :show, :new]
  resources :days, only: [:index, :show, :new]
  resources :users, only: [:index, :show, :new, :create, :update, :delete]


  # get "signup", to: "users#new", as: "signup"
  # get ‘"login", to: "sessions#new", as: "login"
  # get "logout", to: "sessions#destroy", as: "logout"

  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
