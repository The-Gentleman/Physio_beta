Rails.application.routes.draw do
  resources :patients do 
    resources :exercises, only: [:new, :create, :index]
  end 

  root "sessions#index"
  get 'signup' => "users#new"
  post 'signup' => "users#create"
  

  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  # make nested routes

  resources :patients 
  resources :exercises
  resources :users
    # TO DO:
    # CREATE ROUTE FOR HOMEPAGE
  end
