Rails.application.routes.draw do
  root "sessions#index"
  get 'signup' => "users#new"
  post 'signup' => "users#create"
  

  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"

  resources :patients
  resources :exercises
  resources :users
    # TO DO:
    # CREATE ROUTE FOR HOMEPAGE
  end
