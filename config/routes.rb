Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "games#index"

  resources :games, only: [:new, :index, :create]

  resources :boardgames, only: [:new, :index, :show, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
