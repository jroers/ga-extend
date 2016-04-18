Rails.application.routes.draw do

  root to: 'pages#home'

  get '/', to: 'pages#home'

  get '/users', to: 'users#index', as: 'users'
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'




end
