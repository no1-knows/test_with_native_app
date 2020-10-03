Rails.application.routes.draw do

  root :to => 'users#index'

  resources :users
  resources :user_sessions, only: [:create]
  resource :user_detail

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
