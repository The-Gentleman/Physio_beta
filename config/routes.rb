Rails.application.routes.draw do
  root "users#home"
  get 'signup' => "users#new"
  post 'signup' => "users#create"
  get 'login' => "users#login"
  post 'login' => "users#login"

  resources :patients
  resources :exercises
  resources :users
    # TO DO:
    # CREATE ROUTE FOR HOMEPAGE
  end
