Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :products
        get '/home', to: 'pages#home'
    end
  end
  post '/users/sign_up', to: 'devise/registrations#new' 
  root "api/v1/pages#home"
  # post '/users/sign_out', to: 'devise/sessions#destroy' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
