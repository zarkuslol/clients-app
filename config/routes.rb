Rails.application.routes.draw do
  resources :users

  root 'users#index'

  get '/users', to: 'users#index'
  get '/create', to: 'users#new'

  post '/users/create', to: 'users#create'
end
