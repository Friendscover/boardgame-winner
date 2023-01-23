Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "games#index"

  resources :games

  resources :boardgames
  # Defines the root path route ("/")
  # root "articles#index"
end
