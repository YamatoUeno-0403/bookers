Rails.application.routes.draw do
  get "/" => "homes#index"
  
  resources :books
  
  end
