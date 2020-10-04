Rails.application.routes.draw do
  resources :patients
  resources :exercises
  resources :users
    # TO DO:
    # CREATE ROUTE FOR HOMEPAGE
  end
