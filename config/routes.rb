Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home', to: 'sessions#home'
  get '/login', to: 'sessions#login'
  root 'sessions#home'
end
