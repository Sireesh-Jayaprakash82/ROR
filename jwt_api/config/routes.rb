Rails.application.routes.draw do
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource :users, only: %i[create]
  post "/login", to: 'users#login' 
  # Defines the root path route ("/")
  # root "articles#index"
end
