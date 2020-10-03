Rails.application.routes.draw do

  root :to => 'users#index'

  resources :users
  resources :user_sessions, only: [:create]
  resources :user_details

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
