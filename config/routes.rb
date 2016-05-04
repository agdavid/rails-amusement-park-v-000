Rails.application.routes.draw do

  root "welcome#index"

  resources :users
  resources :sessions, only: [:create]

  get "/signin" => "sessions#new"
  
end