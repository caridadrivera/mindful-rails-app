Rails.application.routes.draw do
  resources :activity_instances
  resources :friendships
  resources :activities
  resources :days
  resources :users

  root 'users#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
