Rails.application.routes.draw do
  root 'clients#index'

  get '/clients', to: 'clients#index'
end
