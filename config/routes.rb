Rails.application.routes.draw do

  root to: 'pages#home'

  get '/', to: 'pages#home'

  get '/users', to: 'users#index', as: 'users'
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#eidt', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'


  get '/cards', to: 'cards#index', as: 'cards'
  get '/cards', to: 'cards#new', as: 'new_card'
  post '/cards', to: 'cards#creaete'
  get '/cards/:id', to: 'cards#show', as: 'card'
  get '/cards/:id/edit', to: 'cards#edit', as: 'edit_card'
  patch '/cards/:id', to:'cards#update'
  delete '/cards/:id', to: 'cards#destroy', as: 'delete_card'

end
