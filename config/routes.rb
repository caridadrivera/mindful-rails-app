Rails.application.routes.draw do

  root 'sessions#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :activity_instances, only: [:new, :create, :show, :delete, :update]
  resources :friendships
  resources :activities
  resources :days
  resources :users, only: [:show, :create, :show, :new, :edit, :update]


  get "/login", to: "sessions#new", as: "login"
  post "/login",   to: 'sessions#create'
  delete "/logout", to: "sessions#destroy", as: "logout"
  patch "users/:id/edit", to: "users#edit"



  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
