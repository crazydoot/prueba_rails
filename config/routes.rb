Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup', to: 'usuarios#new'
  get '/home', to: 'sessions#home'
  get '/login', to: 'sessions#login'
  resources :usuarios
end
