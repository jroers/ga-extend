Rails.application.routes.draw do

  root to: 'pages#home'

  get '/', to: 'pages#home'
  get '/about', to: 'pages#about', as: 'about'

  get '/users', to: 'users#index', as: 'users'
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#eidt', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  put '/user/:id', to: 'users#delete_photo', as: 'delete_photo'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'


  get '/cards', to: 'cards#index', as: 'cards'
  get '/cards', to: 'cards#new'
  post '/cards', to: 'cards#create', as: 'new_card'
  get '/cards/:id', to: 'cards#show', as: 'card'
  get '/cards/:id/edit', to: 'cards#edit', as: 'edit_card'
  patch '/cards/:id', to:'cards#update', as: 'patch_card'
  delete '/cards/:id', to: 'cards#destroy', as: 'delete_card'

end
