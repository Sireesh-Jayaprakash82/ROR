Rails.application.routes.draw do
  get 'sessions/new'
  resources :books
  
  resources :users, only: %i[create]
  get '/register', to: 'users#new'
  
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy' 
  resources :sessions, only: %i[create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
