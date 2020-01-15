Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup', to: 'usuarios#new'
  get '/home', to: 'sessions#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :usuarios
end
