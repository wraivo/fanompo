Rails.application.routes.draw do
  resources :services
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :membres
  # Defines the root path route ("/")
  root "membres#index"
end
