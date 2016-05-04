Rails.application.routes.draw do

  #welcome controller
  root "welcome#index"

  #sessions
  get "/signin" => "sessions#new"
  post "/signin" => "sessions#create"
  delete "/signout" => "sessions#destroy"

  #users
  resources :users

  #rides

  #attractions
  
  
end